; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84662 () Bool)

(assert start!84662)

(declare-fun b_free!20059 () Bool)

(declare-fun b_next!20059 () Bool)

(assert (=> start!84662 (= b_free!20059 (not b_next!20059))))

(declare-fun tp!69970 () Bool)

(declare-fun b_and!32209 () Bool)

(assert (=> start!84662 (= tp!69970 b_and!32209)))

(declare-fun b!989675 () Bool)

(declare-fun e!558086 () Bool)

(declare-datatypes ((array!62497 0))(
  ( (array!62498 (arr!30097 (Array (_ BitVec 32) (_ BitVec 64))) (size!30577 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62497)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!989675 (= e!558086 (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!30097 _keys!1544) from!1932)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!36017 0))(
  ( (V!36018 (val!11688 Int)) )
))
(declare-fun minValue!1220 () V!36017)

(declare-datatypes ((ValueCell!11156 0))(
  ( (ValueCellFull!11156 (v!14258 V!36017)) (EmptyCell!11156) )
))
(declare-datatypes ((array!62499 0))(
  ( (array!62500 (arr!30098 (Array (_ BitVec 32) ValueCell!11156)) (size!30578 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62499)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!36017)

(declare-datatypes ((tuple2!14992 0))(
  ( (tuple2!14993 (_1!7506 (_ BitVec 64)) (_2!7506 V!36017)) )
))
(declare-datatypes ((List!20942 0))(
  ( (Nil!20939) (Cons!20938 (h!22100 tuple2!14992) (t!29907 List!20942)) )
))
(declare-datatypes ((ListLongMap!13703 0))(
  ( (ListLongMap!13704 (toList!6867 List!20942)) )
))
(declare-fun lt!439061 () ListLongMap!13703)

(declare-fun defaultEntry!1281 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3517 (array!62497 array!62499 (_ BitVec 32) (_ BitVec 32) V!36017 V!36017 (_ BitVec 32) Int) ListLongMap!13703)

(assert (=> b!989675 (= lt!439061 (getCurrentListMapNoExtraKeys!3517 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!989676 () Bool)

(declare-fun res!661919 () Bool)

(assert (=> b!989676 (=> (not res!661919) (not e!558086))))

(assert (=> b!989676 (= res!661919 (and (= (size!30578 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30577 _keys!1544) (size!30578 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!661921 () Bool)

(assert (=> start!84662 (=> (not res!661921) (not e!558086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84662 (= res!661921 (validMask!0 mask!1948))))

(assert (=> start!84662 e!558086))

(assert (=> start!84662 true))

(declare-fun tp_is_empty!23275 () Bool)

(assert (=> start!84662 tp_is_empty!23275))

(declare-fun e!558088 () Bool)

(declare-fun array_inv!23109 (array!62499) Bool)

(assert (=> start!84662 (and (array_inv!23109 _values!1278) e!558088)))

(assert (=> start!84662 tp!69970))

(declare-fun array_inv!23110 (array!62497) Bool)

(assert (=> start!84662 (array_inv!23110 _keys!1544)))

(declare-fun mapNonEmpty!36958 () Bool)

(declare-fun mapRes!36958 () Bool)

(declare-fun tp!69969 () Bool)

(declare-fun e!558089 () Bool)

(assert (=> mapNonEmpty!36958 (= mapRes!36958 (and tp!69969 e!558089))))

(declare-fun mapRest!36958 () (Array (_ BitVec 32) ValueCell!11156))

(declare-fun mapValue!36958 () ValueCell!11156)

(declare-fun mapKey!36958 () (_ BitVec 32))

(assert (=> mapNonEmpty!36958 (= (arr!30098 _values!1278) (store mapRest!36958 mapKey!36958 mapValue!36958))))

(declare-fun b!989677 () Bool)

(declare-fun res!661920 () Bool)

(assert (=> b!989677 (=> (not res!661920) (not e!558086))))

(assert (=> b!989677 (= res!661920 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30577 _keys!1544))))))

(declare-fun b!989678 () Bool)

(declare-fun res!661915 () Bool)

(assert (=> b!989678 (=> (not res!661915) (not e!558086))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!989678 (= res!661915 (validKeyInArray!0 (select (arr!30097 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!36958 () Bool)

(assert (=> mapIsEmpty!36958 mapRes!36958))

(declare-fun b!989679 () Bool)

(declare-fun e!558085 () Bool)

(assert (=> b!989679 (= e!558085 tp_is_empty!23275)))

(declare-fun b!989680 () Bool)

(assert (=> b!989680 (= e!558089 tp_is_empty!23275)))

(declare-fun b!989681 () Bool)

(declare-fun res!661917 () Bool)

(assert (=> b!989681 (=> (not res!661917) (not e!558086))))

(assert (=> b!989681 (= res!661917 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!989682 () Bool)

(declare-fun res!661916 () Bool)

(assert (=> b!989682 (=> (not res!661916) (not e!558086))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62497 (_ BitVec 32)) Bool)

(assert (=> b!989682 (= res!661916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!989683 () Bool)

(declare-fun res!661918 () Bool)

(assert (=> b!989683 (=> (not res!661918) (not e!558086))))

(declare-datatypes ((List!20943 0))(
  ( (Nil!20940) (Cons!20939 (h!22101 (_ BitVec 64)) (t!29908 List!20943)) )
))
(declare-fun arrayNoDuplicates!0 (array!62497 (_ BitVec 32) List!20943) Bool)

(assert (=> b!989683 (= res!661918 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20940))))

(declare-fun b!989684 () Bool)

(assert (=> b!989684 (= e!558088 (and e!558085 mapRes!36958))))

(declare-fun condMapEmpty!36958 () Bool)

(declare-fun mapDefault!36958 () ValueCell!11156)

