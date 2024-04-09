; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95986 () Bool)

(assert start!95986)

(declare-fun b_free!22603 () Bool)

(declare-fun b_next!22603 () Bool)

(assert (=> start!95986 (= b_free!22603 (not b_next!22603))))

(declare-fun tp!79659 () Bool)

(declare-fun b_and!35899 () Bool)

(assert (=> start!95986 (= tp!79659 b_and!35899)))

(declare-fun mapNonEmpty!41662 () Bool)

(declare-fun mapRes!41662 () Bool)

(declare-fun tp!79658 () Bool)

(declare-fun e!620937 () Bool)

(assert (=> mapNonEmpty!41662 (= mapRes!41662 (and tp!79658 e!620937))))

(declare-datatypes ((V!40601 0))(
  ( (V!40602 (val!13359 Int)) )
))
(declare-datatypes ((ValueCell!12593 0))(
  ( (ValueCellFull!12593 (v!15981 V!40601)) (EmptyCell!12593) )
))
(declare-datatypes ((array!70106 0))(
  ( (array!70107 (arr!33723 (Array (_ BitVec 32) ValueCell!12593)) (size!34260 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70106)

(declare-fun mapValue!41662 () ValueCell!12593)

(declare-fun mapKey!41662 () (_ BitVec 32))

(declare-fun mapRest!41662 () (Array (_ BitVec 32) ValueCell!12593))

(assert (=> mapNonEmpty!41662 (= (arr!33723 _values!874) (store mapRest!41662 mapKey!41662 mapValue!41662))))

(declare-fun b!1086947 () Bool)

(declare-fun e!620943 () Bool)

(declare-fun e!620938 () Bool)

(assert (=> b!1086947 (= e!620943 (and e!620938 mapRes!41662))))

(declare-fun condMapEmpty!41662 () Bool)

(declare-fun mapDefault!41662 () ValueCell!12593)

