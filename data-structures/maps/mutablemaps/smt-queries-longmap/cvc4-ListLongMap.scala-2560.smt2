; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39190 () Bool)

(assert start!39190)

(declare-fun b_free!9449 () Bool)

(declare-fun b_next!9449 () Bool)

(assert (=> start!39190 (= b_free!9449 (not b_next!9449))))

(declare-fun tp!33876 () Bool)

(declare-fun b_and!16853 () Bool)

(assert (=> start!39190 (= tp!33876 b_and!16853)))

(declare-fun b!412512 () Bool)

(declare-fun e!246806 () Bool)

(assert (=> b!412512 (= e!246806 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25041 0))(
  ( (array!25042 (arr!11967 (Array (_ BitVec 32) (_ BitVec 64))) (size!12319 (_ BitVec 32))) )
))
(declare-fun lt!189496 () array!25041)

(declare-datatypes ((V!15239 0))(
  ( (V!15240 (val!5345 Int)) )
))
(declare-fun minValue!515 () V!15239)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!4957 0))(
  ( (ValueCellFull!4957 (v!7588 V!15239)) (EmptyCell!4957) )
))
(declare-datatypes ((array!25043 0))(
  ( (array!25044 (arr!11968 (Array (_ BitVec 32) ValueCell!4957)) (size!12320 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25043)

(declare-fun zeroValue!515 () V!15239)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15239)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!6860 0))(
  ( (tuple2!6861 (_1!3440 (_ BitVec 64)) (_2!3440 V!15239)) )
))
(declare-datatypes ((List!6921 0))(
  ( (Nil!6918) (Cons!6917 (h!7773 tuple2!6860) (t!12103 List!6921)) )
))
(declare-datatypes ((ListLongMap!5787 0))(
  ( (ListLongMap!5788 (toList!2909 List!6921)) )
))
(declare-fun lt!189498 () ListLongMap!5787)

(declare-fun getCurrentListMapNoExtraKeys!1119 (array!25041 array!25043 (_ BitVec 32) (_ BitVec 32) V!15239 V!15239 (_ BitVec 32) Int) ListLongMap!5787)

(assert (=> b!412512 (= lt!189498 (getCurrentListMapNoExtraKeys!1119 lt!189496 (array!25044 (store (arr!11968 _values!549) i!563 (ValueCellFull!4957 v!412)) (size!12320 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189497 () ListLongMap!5787)

(declare-fun _keys!709 () array!25041)

(assert (=> b!412512 (= lt!189497 (getCurrentListMapNoExtraKeys!1119 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!412513 () Bool)

(declare-fun res!239662 () Bool)

(declare-fun e!246811 () Bool)

(assert (=> b!412513 (=> (not res!239662) (not e!246811))))

(declare-datatypes ((List!6922 0))(
  ( (Nil!6919) (Cons!6918 (h!7774 (_ BitVec 64)) (t!12104 List!6922)) )
))
(declare-fun arrayNoDuplicates!0 (array!25041 (_ BitVec 32) List!6922) Bool)

(assert (=> b!412513 (= res!239662 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6919))))

(declare-fun b!412514 () Bool)

(declare-fun res!239665 () Bool)

(assert (=> b!412514 (=> (not res!239665) (not e!246811))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!412514 (= res!239665 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17523 () Bool)

(declare-fun mapRes!17523 () Bool)

(declare-fun tp!33875 () Bool)

(declare-fun e!246809 () Bool)

(assert (=> mapNonEmpty!17523 (= mapRes!17523 (and tp!33875 e!246809))))

(declare-fun mapKey!17523 () (_ BitVec 32))

(declare-fun mapRest!17523 () (Array (_ BitVec 32) ValueCell!4957))

(declare-fun mapValue!17523 () ValueCell!4957)

(assert (=> mapNonEmpty!17523 (= (arr!11968 _values!549) (store mapRest!17523 mapKey!17523 mapValue!17523))))

(declare-fun b!412515 () Bool)

(declare-fun e!246810 () Bool)

(declare-fun e!246808 () Bool)

(assert (=> b!412515 (= e!246810 (and e!246808 mapRes!17523))))

(declare-fun condMapEmpty!17523 () Bool)

(declare-fun mapDefault!17523 () ValueCell!4957)

