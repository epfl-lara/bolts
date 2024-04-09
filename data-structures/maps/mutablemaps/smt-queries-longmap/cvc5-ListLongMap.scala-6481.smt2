; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82754 () Bool)

(assert start!82754)

(declare-fun b_free!18859 () Bool)

(declare-fun b_next!18859 () Bool)

(assert (=> start!82754 (= b_free!18859 (not b_next!18859))))

(declare-fun tp!65697 () Bool)

(declare-fun b_and!30365 () Bool)

(assert (=> start!82754 (= tp!65697 b_and!30365)))

(declare-fun b!964671 () Bool)

(declare-fun e!543852 () Bool)

(declare-fun tp_is_empty!21661 () Bool)

(assert (=> b!964671 (= e!543852 tp_is_empty!21661)))

(declare-fun b!964672 () Bool)

(declare-fun e!543848 () Bool)

(assert (=> b!964672 (= e!543848 tp_is_empty!21661)))

(declare-fun b!964673 () Bool)

(declare-fun e!543853 () Bool)

(declare-fun mapRes!34486 () Bool)

(assert (=> b!964673 (= e!543853 (and e!543852 mapRes!34486))))

(declare-fun condMapEmpty!34486 () Bool)

(declare-datatypes ((V!33865 0))(
  ( (V!33866 (val!10881 Int)) )
))
(declare-datatypes ((ValueCell!10349 0))(
  ( (ValueCellFull!10349 (v!13439 V!33865)) (EmptyCell!10349) )
))
(declare-datatypes ((array!59393 0))(
  ( (array!59394 (arr!28561 (Array (_ BitVec 32) ValueCell!10349)) (size!29041 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59393)

(declare-fun mapDefault!34486 () ValueCell!10349)

