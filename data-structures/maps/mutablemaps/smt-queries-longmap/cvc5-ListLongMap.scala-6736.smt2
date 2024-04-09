; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84432 () Bool)

(assert start!84432)

(declare-fun b_free!19975 () Bool)

(declare-fun b_next!19975 () Bool)

(assert (=> start!84432 (= b_free!19975 (not b_next!19975))))

(declare-fun tp!69703 () Bool)

(declare-fun b_and!32031 () Bool)

(assert (=> start!84432 (= tp!69703 b_and!32031)))

(declare-fun b!987064 () Bool)

(declare-fun res!660459 () Bool)

(declare-fun e!556646 () Bool)

(assert (=> b!987064 (=> (not res!660459) (not e!556646))))

(declare-datatypes ((array!62331 0))(
  ( (array!62332 (arr!30018 (Array (_ BitVec 32) (_ BitVec 64))) (size!30498 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62331)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62331 (_ BitVec 32)) Bool)

(assert (=> b!987064 (= res!660459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!987065 () Bool)

(declare-fun res!660457 () Bool)

(assert (=> b!987065 (=> (not res!660457) (not e!556646))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!987065 (= res!660457 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!36818 () Bool)

(declare-fun mapRes!36818 () Bool)

(declare-fun tp!69704 () Bool)

(declare-fun e!556645 () Bool)

(assert (=> mapNonEmpty!36818 (= mapRes!36818 (and tp!69704 e!556645))))

(declare-datatypes ((V!35905 0))(
  ( (V!35906 (val!11646 Int)) )
))
(declare-datatypes ((ValueCell!11114 0))(
  ( (ValueCellFull!11114 (v!14209 V!35905)) (EmptyCell!11114) )
))
(declare-datatypes ((array!62333 0))(
  ( (array!62334 (arr!30019 (Array (_ BitVec 32) ValueCell!11114)) (size!30499 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62333)

(declare-fun mapKey!36818 () (_ BitVec 32))

(declare-fun mapRest!36818 () (Array (_ BitVec 32) ValueCell!11114))

(declare-fun mapValue!36818 () ValueCell!11114)

(assert (=> mapNonEmpty!36818 (= (arr!30019 _values!1278) (store mapRest!36818 mapKey!36818 mapValue!36818))))

(declare-fun b!987066 () Bool)

(declare-fun e!556643 () Bool)

(declare-fun tp_is_empty!23191 () Bool)

(assert (=> b!987066 (= e!556643 tp_is_empty!23191)))

(declare-fun b!987067 () Bool)

(declare-fun res!660461 () Bool)

(assert (=> b!987067 (=> (not res!660461) (not e!556646))))

(declare-datatypes ((List!20882 0))(
  ( (Nil!20879) (Cons!20878 (h!22040 (_ BitVec 64)) (t!29793 List!20882)) )
))
(declare-fun arrayNoDuplicates!0 (array!62331 (_ BitVec 32) List!20882) Bool)

(assert (=> b!987067 (= res!660461 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20879))))

(declare-fun b!987068 () Bool)

(assert (=> b!987068 (= e!556646 (not true))))

(declare-datatypes ((tuple2!14932 0))(
  ( (tuple2!14933 (_1!7476 (_ BitVec 64)) (_2!7476 V!35905)) )
))
(declare-datatypes ((List!20883 0))(
  ( (Nil!20880) (Cons!20879 (h!22041 tuple2!14932) (t!29794 List!20883)) )
))
(declare-datatypes ((ListLongMap!13643 0))(
  ( (ListLongMap!13644 (toList!6837 List!20883)) )
))
(declare-fun lt!437580 () ListLongMap!13643)

(declare-fun lt!437578 () tuple2!14932)

(declare-fun lt!437581 () tuple2!14932)

(declare-fun +!3025 (ListLongMap!13643 tuple2!14932) ListLongMap!13643)

(assert (=> b!987068 (= (+!3025 (+!3025 lt!437580 lt!437578) lt!437581) (+!3025 (+!3025 lt!437580 lt!437581) lt!437578))))

(declare-fun lt!437579 () V!35905)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!987068 (= lt!437581 (tuple2!14933 (select (arr!30018 _keys!1544) from!1932) lt!437579))))

(declare-fun minValue!1220 () V!35905)

(assert (=> b!987068 (= lt!437578 (tuple2!14933 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32715 0))(
  ( (Unit!32716) )
))
(declare-fun lt!437577 () Unit!32715)

(declare-fun addCommutativeForDiffKeys!681 (ListLongMap!13643 (_ BitVec 64) V!35905 (_ BitVec 64) V!35905) Unit!32715)

(assert (=> b!987068 (= lt!437577 (addCommutativeForDiffKeys!681 lt!437580 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30018 _keys!1544) from!1932) lt!437579))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15587 (ValueCell!11114 V!35905) V!35905)

(declare-fun dynLambda!1856 (Int (_ BitVec 64)) V!35905)

(assert (=> b!987068 (= lt!437579 (get!15587 (select (arr!30019 _values!1278) from!1932) (dynLambda!1856 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35905)

(declare-fun getCurrentListMapNoExtraKeys!3490 (array!62331 array!62333 (_ BitVec 32) (_ BitVec 32) V!35905 V!35905 (_ BitVec 32) Int) ListLongMap!13643)

(assert (=> b!987068 (= lt!437580 (+!3025 (getCurrentListMapNoExtraKeys!3490 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14933 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!987069 () Bool)

(declare-fun res!660456 () Bool)

(assert (=> b!987069 (=> (not res!660456) (not e!556646))))

(assert (=> b!987069 (= res!660456 (and (= (size!30499 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30498 _keys!1544) (size!30499 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!987070 () Bool)

(declare-fun res!660462 () Bool)

(assert (=> b!987070 (=> (not res!660462) (not e!556646))))

(assert (=> b!987070 (= res!660462 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30498 _keys!1544))))))

(declare-fun b!987071 () Bool)

(assert (=> b!987071 (= e!556645 tp_is_empty!23191)))

(declare-fun mapIsEmpty!36818 () Bool)

(assert (=> mapIsEmpty!36818 mapRes!36818))

(declare-fun b!987072 () Bool)

(declare-fun e!556642 () Bool)

(assert (=> b!987072 (= e!556642 (and e!556643 mapRes!36818))))

(declare-fun condMapEmpty!36818 () Bool)

(declare-fun mapDefault!36818 () ValueCell!11114)

