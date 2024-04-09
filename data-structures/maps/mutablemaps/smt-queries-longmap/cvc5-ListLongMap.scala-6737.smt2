; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84438 () Bool)

(assert start!84438)

(declare-fun b_free!19981 () Bool)

(declare-fun b_next!19981 () Bool)

(assert (=> start!84438 (= b_free!19981 (not b_next!19981))))

(declare-fun tp!69722 () Bool)

(declare-fun b_and!32043 () Bool)

(assert (=> start!84438 (= tp!69722 b_and!32043)))

(declare-fun b!987160 () Bool)

(declare-fun e!556687 () Bool)

(declare-fun tp_is_empty!23197 () Bool)

(assert (=> b!987160 (= e!556687 tp_is_empty!23197)))

(declare-fun b!987161 () Bool)

(declare-fun e!556690 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((V!35913 0))(
  ( (V!35914 (val!11649 Int)) )
))
(declare-datatypes ((ValueCell!11117 0))(
  ( (ValueCellFull!11117 (v!14212 V!35913)) (EmptyCell!11117) )
))
(declare-datatypes ((array!62341 0))(
  ( (array!62342 (arr!30023 (Array (_ BitVec 32) ValueCell!11117)) (size!30503 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62341)

(assert (=> b!987161 (= e!556690 (not (bvslt from!1932 (size!30503 _values!1278))))))

(declare-datatypes ((tuple2!14936 0))(
  ( (tuple2!14937 (_1!7478 (_ BitVec 64)) (_2!7478 V!35913)) )
))
(declare-datatypes ((List!20886 0))(
  ( (Nil!20883) (Cons!20882 (h!22044 tuple2!14936) (t!29803 List!20886)) )
))
(declare-datatypes ((ListLongMap!13647 0))(
  ( (ListLongMap!13648 (toList!6839 List!20886)) )
))
(declare-fun lt!437623 () ListLongMap!13647)

(declare-fun lt!437622 () tuple2!14936)

(declare-fun lt!437626 () tuple2!14936)

(declare-fun +!3027 (ListLongMap!13647 tuple2!14936) ListLongMap!13647)

(assert (=> b!987161 (= (+!3027 (+!3027 lt!437623 lt!437622) lt!437626) (+!3027 (+!3027 lt!437623 lt!437626) lt!437622))))

(declare-fun lt!437625 () V!35913)

(declare-datatypes ((array!62343 0))(
  ( (array!62344 (arr!30024 (Array (_ BitVec 32) (_ BitVec 64))) (size!30504 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62343)

(assert (=> b!987161 (= lt!437626 (tuple2!14937 (select (arr!30024 _keys!1544) from!1932) lt!437625))))

(declare-fun minValue!1220 () V!35913)

(assert (=> b!987161 (= lt!437622 (tuple2!14937 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32719 0))(
  ( (Unit!32720) )
))
(declare-fun lt!437624 () Unit!32719)

(declare-fun addCommutativeForDiffKeys!683 (ListLongMap!13647 (_ BitVec 64) V!35913 (_ BitVec 64) V!35913) Unit!32719)

(assert (=> b!987161 (= lt!437624 (addCommutativeForDiffKeys!683 lt!437623 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30024 _keys!1544) from!1932) lt!437625))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15591 (ValueCell!11117 V!35913) V!35913)

(declare-fun dynLambda!1858 (Int (_ BitVec 64)) V!35913)

(assert (=> b!987161 (= lt!437625 (get!15591 (select (arr!30023 _values!1278) from!1932) (dynLambda!1858 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35913)

(declare-fun getCurrentListMapNoExtraKeys!3492 (array!62343 array!62341 (_ BitVec 32) (_ BitVec 32) V!35913 V!35913 (_ BitVec 32) Int) ListLongMap!13647)

(assert (=> b!987161 (= lt!437623 (+!3027 (getCurrentListMapNoExtraKeys!3492 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14937 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!987162 () Bool)

(declare-fun res!660525 () Bool)

(assert (=> b!987162 (=> (not res!660525) (not e!556690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62343 (_ BitVec 32)) Bool)

(assert (=> b!987162 (= res!660525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!987163 () Bool)

(declare-fun e!556689 () Bool)

(assert (=> b!987163 (= e!556689 tp_is_empty!23197)))

(declare-fun b!987164 () Bool)

(declare-fun res!660523 () Bool)

(assert (=> b!987164 (=> (not res!660523) (not e!556690))))

(declare-datatypes ((List!20887 0))(
  ( (Nil!20884) (Cons!20883 (h!22045 (_ BitVec 64)) (t!29804 List!20887)) )
))
(declare-fun arrayNoDuplicates!0 (array!62343 (_ BitVec 32) List!20887) Bool)

(assert (=> b!987164 (= res!660523 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20884))))

(declare-fun b!987165 () Bool)

(declare-fun res!660520 () Bool)

(assert (=> b!987165 (=> (not res!660520) (not e!556690))))

(assert (=> b!987165 (= res!660520 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30504 _keys!1544))))))

(declare-fun mapIsEmpty!36827 () Bool)

(declare-fun mapRes!36827 () Bool)

(assert (=> mapIsEmpty!36827 mapRes!36827))

(declare-fun b!987166 () Bool)

(declare-fun res!660524 () Bool)

(assert (=> b!987166 (=> (not res!660524) (not e!556690))))

(assert (=> b!987166 (= res!660524 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!987167 () Bool)

(declare-fun res!660519 () Bool)

(assert (=> b!987167 (=> (not res!660519) (not e!556690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!987167 (= res!660519 (validKeyInArray!0 (select (arr!30024 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!36827 () Bool)

(declare-fun tp!69721 () Bool)

(assert (=> mapNonEmpty!36827 (= mapRes!36827 (and tp!69721 e!556687))))

(declare-fun mapValue!36827 () ValueCell!11117)

(declare-fun mapRest!36827 () (Array (_ BitVec 32) ValueCell!11117))

(declare-fun mapKey!36827 () (_ BitVec 32))

(assert (=> mapNonEmpty!36827 (= (arr!30023 _values!1278) (store mapRest!36827 mapKey!36827 mapValue!36827))))

(declare-fun res!660522 () Bool)

(assert (=> start!84438 (=> (not res!660522) (not e!556690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84438 (= res!660522 (validMask!0 mask!1948))))

(assert (=> start!84438 e!556690))

(assert (=> start!84438 true))

(assert (=> start!84438 tp_is_empty!23197))

(declare-fun e!556691 () Bool)

(declare-fun array_inv!23057 (array!62341) Bool)

(assert (=> start!84438 (and (array_inv!23057 _values!1278) e!556691)))

(assert (=> start!84438 tp!69722))

(declare-fun array_inv!23058 (array!62343) Bool)

(assert (=> start!84438 (array_inv!23058 _keys!1544)))

(declare-fun b!987168 () Bool)

(assert (=> b!987168 (= e!556691 (and e!556689 mapRes!36827))))

(declare-fun condMapEmpty!36827 () Bool)

(declare-fun mapDefault!36827 () ValueCell!11117)

