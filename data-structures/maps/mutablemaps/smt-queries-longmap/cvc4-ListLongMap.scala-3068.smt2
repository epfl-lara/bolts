; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43272 () Bool)

(assert start!43272)

(declare-fun b_free!12131 () Bool)

(declare-fun b_next!12131 () Bool)

(assert (=> start!43272 (= b_free!12131 (not b_next!12131))))

(declare-fun tp!42664 () Bool)

(declare-fun b_and!20901 () Bool)

(assert (=> start!43272 (= tp!42664 b_and!20901)))

(declare-fun mapIsEmpty!22162 () Bool)

(declare-fun mapRes!22162 () Bool)

(assert (=> mapIsEmpty!22162 mapRes!22162))

(declare-fun b!479147 () Bool)

(declare-fun res!285889 () Bool)

(declare-fun e!281889 () Bool)

(assert (=> b!479147 (=> (not res!285889) (not e!281889))))

(declare-datatypes ((array!30925 0))(
  ( (array!30926 (arr!14866 (Array (_ BitVec 32) (_ BitVec 64))) (size!15224 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30925)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30925 (_ BitVec 32)) Bool)

(assert (=> b!479147 (= res!285889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun mapNonEmpty!22162 () Bool)

(declare-fun tp!42663 () Bool)

(declare-fun e!281891 () Bool)

(assert (=> mapNonEmpty!22162 (= mapRes!22162 (and tp!42663 e!281891))))

(declare-datatypes ((V!19261 0))(
  ( (V!19262 (val!6869 Int)) )
))
(declare-datatypes ((ValueCell!6460 0))(
  ( (ValueCellFull!6460 (v!9154 V!19261)) (EmptyCell!6460) )
))
(declare-fun mapRest!22162 () (Array (_ BitVec 32) ValueCell!6460))

(declare-fun mapKey!22162 () (_ BitVec 32))

(declare-fun mapValue!22162 () ValueCell!6460)

(declare-datatypes ((array!30927 0))(
  ( (array!30928 (arr!14867 (Array (_ BitVec 32) ValueCell!6460)) (size!15225 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30927)

(assert (=> mapNonEmpty!22162 (= (arr!14867 _values!1516) (store mapRest!22162 mapKey!22162 mapValue!22162))))

(declare-fun b!479148 () Bool)

(declare-fun e!281890 () Bool)

(declare-fun tp_is_empty!13643 () Bool)

(assert (=> b!479148 (= e!281890 tp_is_empty!13643)))

(declare-fun b!479149 () Bool)

(declare-fun e!281892 () Bool)

(assert (=> b!479149 (= e!281892 (and e!281890 mapRes!22162))))

(declare-fun condMapEmpty!22162 () Bool)

(declare-fun mapDefault!22162 () ValueCell!6460)

