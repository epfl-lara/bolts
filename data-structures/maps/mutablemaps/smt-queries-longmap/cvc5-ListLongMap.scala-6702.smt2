; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84212 () Bool)

(assert start!84212)

(declare-fun b_free!19885 () Bool)

(declare-fun b_next!19885 () Bool)

(assert (=> start!84212 (= b_free!19885 (not b_next!19885))))

(declare-fun tp!69260 () Bool)

(declare-fun b_and!31865 () Bool)

(assert (=> start!84212 (= tp!69260 b_and!31865)))

(declare-fun b!984377 () Bool)

(declare-fun res!658811 () Bool)

(declare-fun e!554957 () Bool)

(assert (=> b!984377 (=> (not res!658811) (not e!554957))))

(declare-datatypes ((array!61943 0))(
  ( (array!61944 (arr!29825 (Array (_ BitVec 32) (_ BitVec 64))) (size!30305 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61943)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61943 (_ BitVec 32)) Bool)

(assert (=> b!984377 (= res!658811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!984378 () Bool)

(declare-fun e!554960 () Bool)

(assert (=> b!984378 (= e!554957 e!554960)))

(declare-fun res!658807 () Bool)

(assert (=> b!984378 (=> (not res!658807) (not e!554960))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!984378 (= res!658807 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29825 _keys!1544) from!1932))))))

(declare-datatypes ((V!35633 0))(
  ( (V!35634 (val!11544 Int)) )
))
(declare-datatypes ((ValueCell!11012 0))(
  ( (ValueCellFull!11012 (v!14106 V!35633)) (EmptyCell!11012) )
))
(declare-datatypes ((array!61945 0))(
  ( (array!61946 (arr!29826 (Array (_ BitVec 32) ValueCell!11012)) (size!30306 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61945)

(declare-fun lt!436800 () V!35633)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15493 (ValueCell!11012 V!35633) V!35633)

(declare-fun dynLambda!1830 (Int (_ BitVec 64)) V!35633)

(assert (=> b!984378 (= lt!436800 (get!15493 (select (arr!29826 _values!1278) from!1932) (dynLambda!1830 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35633)

(declare-fun zeroValue!1220 () V!35633)

(declare-datatypes ((tuple2!14866 0))(
  ( (tuple2!14867 (_1!7443 (_ BitVec 64)) (_2!7443 V!35633)) )
))
(declare-datatypes ((List!20786 0))(
  ( (Nil!20783) (Cons!20782 (h!21944 tuple2!14866) (t!29623 List!20786)) )
))
(declare-datatypes ((ListLongMap!13577 0))(
  ( (ListLongMap!13578 (toList!6804 List!20786)) )
))
(declare-fun lt!436797 () ListLongMap!13577)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3459 (array!61943 array!61945 (_ BitVec 32) (_ BitVec 32) V!35633 V!35633 (_ BitVec 32) Int) ListLongMap!13577)

(assert (=> b!984378 (= lt!436797 (getCurrentListMapNoExtraKeys!3459 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!984379 () Bool)

(declare-fun res!658805 () Bool)

(assert (=> b!984379 (=> (not res!658805) (not e!554957))))

(assert (=> b!984379 (= res!658805 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!984380 () Bool)

(declare-fun res!658808 () Bool)

(assert (=> b!984380 (=> (not res!658808) (not e!554957))))

(assert (=> b!984380 (= res!658808 (and (= (size!30306 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30305 _keys!1544) (size!30306 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!984381 () Bool)

(declare-fun e!554955 () Bool)

(declare-fun tp_is_empty!22987 () Bool)

(assert (=> b!984381 (= e!554955 tp_is_empty!22987)))

(declare-fun res!658812 () Bool)

(assert (=> start!84212 (=> (not res!658812) (not e!554957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84212 (= res!658812 (validMask!0 mask!1948))))

(assert (=> start!84212 e!554957))

(assert (=> start!84212 true))

(assert (=> start!84212 tp_is_empty!22987))

(declare-fun e!554956 () Bool)

(declare-fun array_inv!22921 (array!61945) Bool)

(assert (=> start!84212 (and (array_inv!22921 _values!1278) e!554956)))

(assert (=> start!84212 tp!69260))

(declare-fun array_inv!22922 (array!61943) Bool)

(assert (=> start!84212 (array_inv!22922 _keys!1544)))

(declare-fun b!984382 () Bool)

(declare-fun e!554958 () Bool)

(declare-fun mapRes!36509 () Bool)

(assert (=> b!984382 (= e!554956 (and e!554958 mapRes!36509))))

(declare-fun condMapEmpty!36509 () Bool)

(declare-fun mapDefault!36509 () ValueCell!11012)

