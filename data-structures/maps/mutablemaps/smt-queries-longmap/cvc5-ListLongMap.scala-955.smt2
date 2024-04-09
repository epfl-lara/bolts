; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20838 () Bool)

(assert start!20838)

(declare-fun b_free!5479 () Bool)

(declare-fun b_next!5479 () Bool)

(assert (=> start!20838 (= b_free!5479 (not b_next!5479))))

(declare-fun tp!19478 () Bool)

(declare-fun b_and!12243 () Bool)

(assert (=> start!20838 (= tp!19478 b_and!12243)))

(declare-fun b!208806 () Bool)

(declare-fun res!101677 () Bool)

(declare-fun e!136131 () Bool)

(assert (=> b!208806 (=> (not res!101677) (not e!136131))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9884 0))(
  ( (array!9885 (arr!4692 (Array (_ BitVec 32) (_ BitVec 64))) (size!5017 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9884)

(assert (=> b!208806 (= res!101677 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5017 _keys!825))))))

(declare-fun b!208807 () Bool)

(declare-fun res!101682 () Bool)

(assert (=> b!208807 (=> (not res!101682) (not e!136131))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6769 0))(
  ( (V!6770 (val!2715 Int)) )
))
(declare-datatypes ((ValueCell!2327 0))(
  ( (ValueCellFull!2327 (v!4681 V!6769)) (EmptyCell!2327) )
))
(declare-datatypes ((array!9886 0))(
  ( (array!9887 (arr!4693 (Array (_ BitVec 32) ValueCell!2327)) (size!5018 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9886)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!208807 (= res!101682 (and (= (size!5018 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5017 _keys!825) (size!5018 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208808 () Bool)

(declare-fun res!101681 () Bool)

(assert (=> b!208808 (=> (not res!101681) (not e!136131))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!208808 (= res!101681 (= (select (arr!4692 _keys!825) i!601) k!843))))

(declare-fun b!208809 () Bool)

(declare-fun res!101679 () Bool)

(assert (=> b!208809 (=> (not res!101679) (not e!136131))))

(declare-datatypes ((List!3026 0))(
  ( (Nil!3023) (Cons!3022 (h!3664 (_ BitVec 64)) (t!7965 List!3026)) )
))
(declare-fun arrayNoDuplicates!0 (array!9884 (_ BitVec 32) List!3026) Bool)

(assert (=> b!208809 (= res!101679 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3023))))

(declare-fun mapNonEmpty!9080 () Bool)

(declare-fun mapRes!9080 () Bool)

(declare-fun tp!19477 () Bool)

(declare-fun e!136133 () Bool)

(assert (=> mapNonEmpty!9080 (= mapRes!9080 (and tp!19477 e!136133))))

(declare-fun mapValue!9080 () ValueCell!2327)

(declare-fun mapRest!9080 () (Array (_ BitVec 32) ValueCell!2327))

(declare-fun mapKey!9080 () (_ BitVec 32))

(assert (=> mapNonEmpty!9080 (= (arr!4693 _values!649) (store mapRest!9080 mapKey!9080 mapValue!9080))))

(declare-fun b!208810 () Bool)

(assert (=> b!208810 (= e!136131 false)))

(declare-datatypes ((tuple2!4106 0))(
  ( (tuple2!4107 (_1!2063 (_ BitVec 64)) (_2!2063 V!6769)) )
))
(declare-datatypes ((List!3027 0))(
  ( (Nil!3024) (Cons!3023 (h!3665 tuple2!4106) (t!7966 List!3027)) )
))
(declare-datatypes ((ListLongMap!3033 0))(
  ( (ListLongMap!3034 (toList!1532 List!3027)) )
))
(declare-fun lt!106891 () ListLongMap!3033)

(declare-fun v!520 () V!6769)

(declare-fun zeroValue!615 () V!6769)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6769)

(declare-fun getCurrentListMapNoExtraKeys!465 (array!9884 array!9886 (_ BitVec 32) (_ BitVec 32) V!6769 V!6769 (_ BitVec 32) Int) ListLongMap!3033)

(assert (=> b!208810 (= lt!106891 (getCurrentListMapNoExtraKeys!465 _keys!825 (array!9887 (store (arr!4693 _values!649) i!601 (ValueCellFull!2327 v!520)) (size!5018 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106890 () ListLongMap!3033)

(assert (=> b!208810 (= lt!106890 (getCurrentListMapNoExtraKeys!465 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!208811 () Bool)

(declare-fun e!136134 () Bool)

(declare-fun e!136132 () Bool)

(assert (=> b!208811 (= e!136134 (and e!136132 mapRes!9080))))

(declare-fun condMapEmpty!9080 () Bool)

(declare-fun mapDefault!9080 () ValueCell!2327)

