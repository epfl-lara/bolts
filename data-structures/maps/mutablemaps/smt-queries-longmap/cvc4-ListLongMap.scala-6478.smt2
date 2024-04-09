; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82740 () Bool)

(assert start!82740)

(declare-fun b_free!18845 () Bool)

(declare-fun b_next!18845 () Bool)

(assert (=> start!82740 (= b_free!18845 (not b_next!18845))))

(declare-fun tp!65655 () Bool)

(declare-fun b_and!30351 () Bool)

(assert (=> start!82740 (= tp!65655 b_and!30351)))

(declare-fun b!964418 () Bool)

(declare-fun res!645643 () Bool)

(declare-fun e!543722 () Bool)

(assert (=> b!964418 (=> (not res!645643) (not e!543722))))

(declare-datatypes ((array!59367 0))(
  ( (array!59368 (arr!28548 (Array (_ BitVec 32) (_ BitVec 64))) (size!29028 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59367)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964418 (= res!645643 (validKeyInArray!0 (select (arr!28548 _keys!1686) i!803)))))

(declare-fun b!964419 () Bool)

(declare-fun e!543723 () Bool)

(declare-fun e!543725 () Bool)

(declare-fun mapRes!34465 () Bool)

(assert (=> b!964419 (= e!543723 (and e!543725 mapRes!34465))))

(declare-fun condMapEmpty!34465 () Bool)

(declare-datatypes ((V!33845 0))(
  ( (V!33846 (val!10874 Int)) )
))
(declare-datatypes ((ValueCell!10342 0))(
  ( (ValueCellFull!10342 (v!13432 V!33845)) (EmptyCell!10342) )
))
(declare-datatypes ((array!59369 0))(
  ( (array!59370 (arr!28549 (Array (_ BitVec 32) ValueCell!10342)) (size!29029 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59369)

(declare-fun mapDefault!34465 () ValueCell!10342)

