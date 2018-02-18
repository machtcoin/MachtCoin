What is MachtCoin?
------------------

MachtCoin is an experimental new digital currency that enables instant payments to
anyone, anywhere in the world. MachtCoin uses peer-to-peer technology to operate
with no central authority: managing transactions and issuing money are carried
out collectively by the network. MachtCoin Core is the name of open source
software which enables the use of this currency.

For more information, as well as an immediately useable, binary version of
the MachtCoin Core software, see https://www.machtcoin.co

Copyright (c) 2017-2018 MachtCoin Developers


Specifications
--------------

+ Algorithm : Scrypt
+ Coin Symbol : MCH
+ Max Supply : 36.000.000
+ Coin Maturity : 10 blocks
+ Confirmation : 6 confirmations
+ Block Spacing : 1 minute
+ POS reward : 18% Annually
+ Min. Stake Age : 24 hours
+ RPC port : 11332
+ P2P port : 11333


Media
-----

+ https://bitcointalk.org/index.php?topic=2624480
+ https://www.facebook.com/Machtcoin-1921139708136552/
+ https://twitter.com/macht_coin
+ https://www.youtube.com/channel/UCDDwBDgrRXp5oTclN9mak6w
+ https://t.me/machtcoin


License
-------

MachtCoin Core is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see http://opensource.org/licenses/MIT.


Development process
-------------------

Developers work in their own trees, then submit pull requests when they think
their feature or bug fix is ready.

If it is a simple/trivial/non-controversial change, then one of the MachtCoin
development team members simply pulls it.

If it is a *more complicated or potentially controversial* change, then the patch
submitter will be asked to start a discussion 

The patch will be accepted if there is broad consensus that it is a good thing.
Developers should expect to rework and resubmit patches if the code doesn't
match the project's coding conventions (see [doc/coding.txt](doc/coding.txt)) or are
controversial.


Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test. Please be patient and help out, and
remember this is a security-critical project where any mistake might cost people
lots of money.

### Automated Testing

Developers are strongly encouraged to write unit tests for new code, and to
submit new unit tests for old code. Unit tests can be compiled and run (assuming they weren't disabled in configure) with: `make check`

Every pull request is built for both Windows and Linux on a dedicated server,
and unit and sanity tests are automatically run. The binaries produced may be
used for manual QA testing

### Manual Quality Assurance (QA) Testing

Large changes should have a test plan, and should be tested by somebody other
than the developer who wrote the code.


Development tips and tricks
---------------------------

**compiling for debugging**

Run configure with the --enable-debug option, then make. Or run configure with
CXXFLAGS="-g -ggdb -O0" or whatever debug flags you need.

**debug.log**

If the code is behaving strangely, take a look in the debug.log file in the data directory;
error and debugging message are written there.

The -debug=... command-line option controls debugging; running with just -debug will turn
on all categories (and give you a very large debug.log file).

The Qt code routes qDebug() output to debug.log under category "qt": run with -debug=qt
to see it.

**testnet and regtest modes**

Run with the -testnet option to run with "play machtcoin" on the test network, if you
are testing multi-machine code that needs to operate across the internet.

If you are testing something that can run on one machine, run with the -regtest option.
In regression test mode blocks can be created on-demand; see qa/rpc-tests/ for tests
that run in -regest mode.

**DEBUG_LOCKORDER**

MachtCoin Core is a multithreaded application, and deadlocks or other multithreading bugs
can be very difficult to track down. Compiling with -DDEBUG_LOCKORDER (configure
CXXFLAGS="-DDEBUG_LOCKORDER -g") inserts run-time checks to keep track of what locks
are held, and adds warning to the debug.log file if inconsistencies are detected.
