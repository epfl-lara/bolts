; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84480 () Bool)

(assert start!84480)

(declare-fun b_free!20003 () Bool)

(declare-fun b_next!20003 () Bool)

(assert (=> start!84480 (= b_free!20003 (not b_next!20003))))

(declare-fun tp!69790 () Bool)

(declare-fun b_and!32091 () Bool)

(assert (=> start!84480 (= tp!69790 b_and!32091)))

(declare-fun b!987620 () Bool)

(declare-fun res!660809 () Bool)

(declare-fun e!556927 () Bool)

(assert (=> b!987620 (=> (not res!660809) (not e!556927))))

(declare-datatypes ((array!62387 0))(
  ( (array!62388 (arr!30045 (Array (_ BitVec 32) (_ BitVec 64))) (size!30525 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62387)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62387 (_ BitVec 32)) Bool)

(assert (=> b!987620 (= res!660809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!987621 () Bool)

(declare-fun res!660808 () Bool)

(assert (=> b!987621 (=> (not res!660808) (not e!556927))))

(declare-datatypes ((List!20905 0))(
  ( (Nil!20902) (Cons!20901 (h!22063 (_ BitVec 64)) (t!29844 List!20905)) )
))
(declare-fun arrayNoDuplicates!0 (array!62387 (_ BitVec 32) List!20905) Bool)

(assert (=> b!987621 (= res!660808 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20902))))

(declare-fun b!987622 () Bool)

(declare-fun e!556932 () Bool)

(declare-fun tp_is_empty!23219 () Bool)

(assert (=> b!987622 (= e!556932 tp_is_empty!23219)))

(declare-fun mapIsEmpty!36863 () Bool)

(declare-fun mapRes!36863 () Bool)

(assert (=> mapIsEmpty!36863 mapRes!36863))

(declare-fun b!987623 () Bool)

(declare-fun e!556931 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((V!35941 0))(
  ( (V!35942 (val!11660 Int)) )
))
(declare-datatypes ((ValueCell!11128 0))(
  ( (ValueCellFull!11128 (v!14224 V!35941)) (EmptyCell!11128) )
))
(declare-datatypes ((array!62389 0))(
  ( (array!62390 (arr!30046 (Array (_ BitVec 32) ValueCell!11128)) (size!30526 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62389)

(assert (=> b!987623 (= e!556931 (bvslt from!1932 (size!30526 _values!1278)))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35941)

(declare-fun defaultEntry!1281 () Int)

(declare-fun minValue!1220 () V!35941)

(declare-datatypes ((tuple2!14954 0))(
  ( (tuple2!14955 (_1!7487 (_ BitVec 64)) (_2!7487 V!35941)) )
))
(declare-datatypes ((List!20906 0))(
  ( (Nil!20903) (Cons!20902 (h!22064 tuple2!14954) (t!29845 List!20906)) )
))
(declare-datatypes ((ListLongMap!13665 0))(
  ( (ListLongMap!13666 (toList!6848 List!20906)) )
))
(declare-fun lt!437958 () ListLongMap!13665)

(declare-fun getCurrentListMap!3869 (array!62387 array!62389 (_ BitVec 32) (_ BitVec 32) V!35941 V!35941 (_ BitVec 32) Int) ListLongMap!13665)

(assert (=> b!987623 (= lt!437958 (getCurrentListMap!3869 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!437952 () ListLongMap!13665)

(declare-fun lt!437953 () ListLongMap!13665)

(declare-fun lt!437959 () tuple2!14954)

(declare-fun lt!437950 () tuple2!14954)

(declare-fun +!3036 (ListLongMap!13665 tuple2!14954) ListLongMap!13665)

(assert (=> b!987623 (= lt!437953 (+!3036 (+!3036 lt!437952 lt!437950) lt!437959))))

(declare-fun lt!437957 () V!35941)

(declare-datatypes ((Unit!32737 0))(
  ( (Unit!32738) )
))
(declare-fun lt!437960 () Unit!32737)

(declare-fun addCommutativeForDiffKeys!692 (ListLongMap!13665 (_ BitVec 64) V!35941 (_ BitVec 64) V!35941) Unit!32737)

(assert (=> b!987623 (= lt!437960 (addCommutativeForDiffKeys!692 lt!437952 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30045 _keys!1544) from!1932) lt!437957))))

(declare-fun b!987624 () Bool)

(declare-fun e!556930 () Bool)

(assert (=> b!987624 (= e!556930 tp_is_empty!23219)))

(declare-fun mapNonEmpty!36863 () Bool)

(declare-fun tp!69791 () Bool)

(assert (=> mapNonEmpty!36863 (= mapRes!36863 (and tp!69791 e!556932))))

(declare-fun mapKey!36863 () (_ BitVec 32))

(declare-fun mapValue!36863 () ValueCell!11128)

(declare-fun mapRest!36863 () (Array (_ BitVec 32) ValueCell!11128))

(assert (=> mapNonEmpty!36863 (= (arr!30046 _values!1278) (store mapRest!36863 mapKey!36863 mapValue!36863))))

(declare-fun res!660812 () Bool)

(assert (=> start!84480 (=> (not res!660812) (not e!556927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84480 (= res!660812 (validMask!0 mask!1948))))

(assert (=> start!84480 e!556927))

(assert (=> start!84480 true))

(assert (=> start!84480 tp_is_empty!23219))

(declare-fun e!556928 () Bool)

(declare-fun array_inv!23071 (array!62389) Bool)

(assert (=> start!84480 (and (array_inv!23071 _values!1278) e!556928)))

(assert (=> start!84480 tp!69790))

(declare-fun array_inv!23072 (array!62387) Bool)

(assert (=> start!84480 (array_inv!23072 _keys!1544)))

(declare-fun b!987625 () Bool)

(declare-fun res!660814 () Bool)

(assert (=> b!987625 (=> (not res!660814) (not e!556927))))

(assert (=> b!987625 (= res!660814 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!987626 () Bool)

(declare-fun res!660813 () Bool)

(assert (=> b!987626 (=> (not res!660813) (not e!556927))))

(assert (=> b!987626 (= res!660813 (and (= (size!30526 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30525 _keys!1544) (size!30526 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!987627 () Bool)

(declare-fun res!660811 () Bool)

(assert (=> b!987627 (=> (not res!660811) (not e!556927))))

(assert (=> b!987627 (= res!660811 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30525 _keys!1544))))))

(declare-fun b!987628 () Bool)

(declare-fun res!660815 () Bool)

(assert (=> b!987628 (=> (not res!660815) (not e!556927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!987628 (= res!660815 (validKeyInArray!0 (select (arr!30045 _keys!1544) from!1932)))))

(declare-fun b!987629 () Bool)

(assert (=> b!987629 (= e!556927 (not e!556931))))

(declare-fun res!660810 () Bool)

(assert (=> b!987629 (=> res!660810 e!556931)))

(assert (=> b!987629 (= res!660810 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!30045 _keys!1544) from!1932)))))

(declare-fun lt!437954 () ListLongMap!13665)

(declare-fun lt!437951 () tuple2!14954)

(assert (=> b!987629 (= (+!3036 lt!437954 lt!437950) (+!3036 lt!437953 lt!437951))))

(declare-fun lt!437955 () ListLongMap!13665)

(assert (=> b!987629 (= lt!437953 (+!3036 lt!437955 lt!437950))))

(assert (=> b!987629 (= lt!437950 (tuple2!14955 (select (arr!30045 _keys!1544) from!1932) lt!437957))))

(assert (=> b!987629 (= lt!437954 (+!3036 lt!437955 lt!437951))))

(assert (=> b!987629 (= lt!437951 (tuple2!14955 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-fun lt!437956 () Unit!32737)

(assert (=> b!987629 (= lt!437956 (addCommutativeForDiffKeys!692 lt!437955 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30045 _keys!1544) from!1932) lt!437957))))

(declare-fun get!15605 (ValueCell!11128 V!35941) V!35941)

(declare-fun dynLambda!1864 (Int (_ BitVec 64)) V!35941)

(assert (=> b!987629 (= lt!437957 (get!15605 (select (arr!30046 _values!1278) from!1932) (dynLambda!1864 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!987629 (= lt!437955 (+!3036 lt!437952 lt!437959))))

(assert (=> b!987629 (= lt!437959 (tuple2!14955 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3498 (array!62387 array!62389 (_ BitVec 32) (_ BitVec 32) V!35941 V!35941 (_ BitVec 32) Int) ListLongMap!13665)

(assert (=> b!987629 (= lt!437952 (getCurrentListMapNoExtraKeys!3498 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!987630 () Bool)

(assert (=> b!987630 (= e!556928 (and e!556930 mapRes!36863))))

(declare-fun condMapEmpty!36863 () Bool)

(declare-fun mapDefault!36863 () ValueCell!11128)

