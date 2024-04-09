; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70052 () Bool)

(assert start!70052)

(declare-fun b_free!12449 () Bool)

(declare-fun b_next!12449 () Bool)

(assert (=> start!70052 (= b_free!12449 (not b_next!12449))))

(declare-fun tp!44062 () Bool)

(declare-fun b_and!21239 () Bool)

(assert (=> start!70052 (= tp!44062 b_and!21239)))

(declare-fun b!813710 () Bool)

(declare-fun e!450995 () Bool)

(declare-fun tp_is_empty!14159 () Bool)

(assert (=> b!813710 (= e!450995 tp_is_empty!14159)))

(declare-fun b!813711 () Bool)

(declare-fun res!555962 () Bool)

(declare-fun e!450993 () Bool)

(assert (=> b!813711 (=> (not res!555962) (not e!450993))))

(declare-datatypes ((array!44508 0))(
  ( (array!44509 (arr!21310 (Array (_ BitVec 32) (_ BitVec 64))) (size!21731 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44508)

(declare-datatypes ((List!15217 0))(
  ( (Nil!15214) (Cons!15213 (h!16342 (_ BitVec 64)) (t!21542 List!15217)) )
))
(declare-fun arrayNoDuplicates!0 (array!44508 (_ BitVec 32) List!15217) Bool)

(assert (=> b!813711 (= res!555962 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15214))))

(declare-fun b!813712 () Bool)

(declare-fun e!450992 () Bool)

(assert (=> b!813712 (= e!450992 tp_is_empty!14159)))

(declare-fun res!555965 () Bool)

(assert (=> start!70052 (=> (not res!555965) (not e!450993))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70052 (= res!555965 (validMask!0 mask!1312))))

(assert (=> start!70052 e!450993))

(assert (=> start!70052 tp_is_empty!14159))

(declare-fun array_inv!17043 (array!44508) Bool)

(assert (=> start!70052 (array_inv!17043 _keys!976)))

(assert (=> start!70052 true))

(declare-datatypes ((V!23879 0))(
  ( (V!23880 (val!7127 Int)) )
))
(declare-datatypes ((ValueCell!6664 0))(
  ( (ValueCellFull!6664 (v!9550 V!23879)) (EmptyCell!6664) )
))
(declare-datatypes ((array!44510 0))(
  ( (array!44511 (arr!21311 (Array (_ BitVec 32) ValueCell!6664)) (size!21732 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44510)

(declare-fun e!450994 () Bool)

(declare-fun array_inv!17044 (array!44510) Bool)

(assert (=> start!70052 (and (array_inv!17044 _values!788) e!450994)))

(assert (=> start!70052 tp!44062))

(declare-fun mapIsEmpty!22819 () Bool)

(declare-fun mapRes!22819 () Bool)

(assert (=> mapIsEmpty!22819 mapRes!22819))

(declare-fun b!813713 () Bool)

(declare-fun res!555963 () Bool)

(assert (=> b!813713 (=> (not res!555963) (not e!450993))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44508 (_ BitVec 32)) Bool)

(assert (=> b!813713 (= res!555963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!813714 () Bool)

(assert (=> b!813714 (= e!450993 false)))

(declare-datatypes ((tuple2!9340 0))(
  ( (tuple2!9341 (_1!4680 (_ BitVec 64)) (_2!4680 V!23879)) )
))
(declare-datatypes ((List!15218 0))(
  ( (Nil!15215) (Cons!15214 (h!16343 tuple2!9340) (t!21543 List!15218)) )
))
(declare-datatypes ((ListLongMap!8177 0))(
  ( (ListLongMap!8178 (toList!4104 List!15218)) )
))
(declare-fun lt!364363 () ListLongMap!8177)

(declare-fun zeroValueAfter!34 () V!23879)

(declare-fun minValue!754 () V!23879)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2153 (array!44508 array!44510 (_ BitVec 32) (_ BitVec 32) V!23879 V!23879 (_ BitVec 32) Int) ListLongMap!8177)

(assert (=> b!813714 (= lt!364363 (getCurrentListMapNoExtraKeys!2153 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23879)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!364364 () ListLongMap!8177)

(assert (=> b!813714 (= lt!364364 (getCurrentListMapNoExtraKeys!2153 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813715 () Bool)

(declare-fun res!555964 () Bool)

(assert (=> b!813715 (=> (not res!555964) (not e!450993))))

(assert (=> b!813715 (= res!555964 (and (= (size!21732 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21731 _keys!976) (size!21732 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!22819 () Bool)

(declare-fun tp!44061 () Bool)

(assert (=> mapNonEmpty!22819 (= mapRes!22819 (and tp!44061 e!450992))))

(declare-fun mapKey!22819 () (_ BitVec 32))

(declare-fun mapRest!22819 () (Array (_ BitVec 32) ValueCell!6664))

(declare-fun mapValue!22819 () ValueCell!6664)

(assert (=> mapNonEmpty!22819 (= (arr!21311 _values!788) (store mapRest!22819 mapKey!22819 mapValue!22819))))

(declare-fun b!813716 () Bool)

(assert (=> b!813716 (= e!450994 (and e!450995 mapRes!22819))))

(declare-fun condMapEmpty!22819 () Bool)

(declare-fun mapDefault!22819 () ValueCell!6664)

