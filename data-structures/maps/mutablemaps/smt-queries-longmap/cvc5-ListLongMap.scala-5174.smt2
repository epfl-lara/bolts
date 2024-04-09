; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70054 () Bool)

(assert start!70054)

(declare-fun b_free!12451 () Bool)

(declare-fun b_next!12451 () Bool)

(assert (=> start!70054 (= b_free!12451 (not b_next!12451))))

(declare-fun tp!44067 () Bool)

(declare-fun b_and!21241 () Bool)

(assert (=> start!70054 (= tp!44067 b_and!21241)))

(declare-fun b!813731 () Bool)

(declare-fun res!555975 () Bool)

(declare-fun e!451006 () Bool)

(assert (=> b!813731 (=> (not res!555975) (not e!451006))))

(declare-datatypes ((array!44512 0))(
  ( (array!44513 (arr!21312 (Array (_ BitVec 32) (_ BitVec 64))) (size!21733 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44512)

(declare-datatypes ((List!15219 0))(
  ( (Nil!15216) (Cons!15215 (h!16344 (_ BitVec 64)) (t!21544 List!15219)) )
))
(declare-fun arrayNoDuplicates!0 (array!44512 (_ BitVec 32) List!15219) Bool)

(assert (=> b!813731 (= res!555975 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15216))))

(declare-fun b!813732 () Bool)

(assert (=> b!813732 (= e!451006 false)))

(declare-datatypes ((V!23883 0))(
  ( (V!23884 (val!7128 Int)) )
))
(declare-fun zeroValueAfter!34 () V!23883)

(declare-datatypes ((ValueCell!6665 0))(
  ( (ValueCellFull!6665 (v!9551 V!23883)) (EmptyCell!6665) )
))
(declare-datatypes ((array!44514 0))(
  ( (array!44515 (arr!21313 (Array (_ BitVec 32) ValueCell!6665)) (size!21734 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44514)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun minValue!754 () V!23883)

(declare-datatypes ((tuple2!9342 0))(
  ( (tuple2!9343 (_1!4681 (_ BitVec 64)) (_2!4681 V!23883)) )
))
(declare-datatypes ((List!15220 0))(
  ( (Nil!15217) (Cons!15216 (h!16345 tuple2!9342) (t!21545 List!15220)) )
))
(declare-datatypes ((ListLongMap!8179 0))(
  ( (ListLongMap!8180 (toList!4105 List!15220)) )
))
(declare-fun lt!364369 () ListLongMap!8179)

(declare-fun getCurrentListMapNoExtraKeys!2154 (array!44512 array!44514 (_ BitVec 32) (_ BitVec 32) V!23883 V!23883 (_ BitVec 32) Int) ListLongMap!8179)

(assert (=> b!813732 (= lt!364369 (getCurrentListMapNoExtraKeys!2154 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23883)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!364370 () ListLongMap!8179)

(assert (=> b!813732 (= lt!364370 (getCurrentListMapNoExtraKeys!2154 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813733 () Bool)

(declare-fun res!555977 () Bool)

(assert (=> b!813733 (=> (not res!555977) (not e!451006))))

(assert (=> b!813733 (= res!555977 (and (= (size!21734 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21733 _keys!976) (size!21734 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813734 () Bool)

(declare-fun e!451010 () Bool)

(declare-fun tp_is_empty!14161 () Bool)

(assert (=> b!813734 (= e!451010 tp_is_empty!14161)))

(declare-fun mapIsEmpty!22822 () Bool)

(declare-fun mapRes!22822 () Bool)

(assert (=> mapIsEmpty!22822 mapRes!22822))

(declare-fun b!813735 () Bool)

(declare-fun res!555974 () Bool)

(assert (=> b!813735 (=> (not res!555974) (not e!451006))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44512 (_ BitVec 32)) Bool)

(assert (=> b!813735 (= res!555974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!555976 () Bool)

(assert (=> start!70054 (=> (not res!555976) (not e!451006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70054 (= res!555976 (validMask!0 mask!1312))))

(assert (=> start!70054 e!451006))

(assert (=> start!70054 tp_is_empty!14161))

(declare-fun array_inv!17045 (array!44512) Bool)

(assert (=> start!70054 (array_inv!17045 _keys!976)))

(assert (=> start!70054 true))

(declare-fun e!451008 () Bool)

(declare-fun array_inv!17046 (array!44514) Bool)

(assert (=> start!70054 (and (array_inv!17046 _values!788) e!451008)))

(assert (=> start!70054 tp!44067))

(declare-fun mapNonEmpty!22822 () Bool)

(declare-fun tp!44068 () Bool)

(assert (=> mapNonEmpty!22822 (= mapRes!22822 (and tp!44068 e!451010))))

(declare-fun mapRest!22822 () (Array (_ BitVec 32) ValueCell!6665))

(declare-fun mapKey!22822 () (_ BitVec 32))

(declare-fun mapValue!22822 () ValueCell!6665)

(assert (=> mapNonEmpty!22822 (= (arr!21313 _values!788) (store mapRest!22822 mapKey!22822 mapValue!22822))))

(declare-fun b!813736 () Bool)

(declare-fun e!451009 () Bool)

(assert (=> b!813736 (= e!451008 (and e!451009 mapRes!22822))))

(declare-fun condMapEmpty!22822 () Bool)

(declare-fun mapDefault!22822 () ValueCell!6665)

