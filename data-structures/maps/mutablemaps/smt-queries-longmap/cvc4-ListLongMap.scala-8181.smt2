; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99992 () Bool)

(assert start!99992)

(declare-fun b_free!25535 () Bool)

(declare-fun b_next!25535 () Bool)

(assert (=> start!99992 (= b_free!25535 (not b_next!25535))))

(declare-fun tp!89320 () Bool)

(declare-fun b_and!41951 () Bool)

(assert (=> start!99992 (= tp!89320 b_and!41951)))

(declare-fun b!1190182 () Bool)

(declare-fun res!791616 () Bool)

(declare-fun e!676664 () Bool)

(assert (=> b!1190182 (=> (not res!791616) (not e!676664))))

(declare-datatypes ((array!76896 0))(
  ( (array!76897 (arr!37094 (Array (_ BitVec 32) (_ BitVec 64))) (size!37631 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76896)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76896 (_ BitVec 32)) Bool)

(assert (=> b!1190182 (= res!791616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1190183 () Bool)

(declare-fun res!791613 () Bool)

(declare-fun e!676668 () Bool)

(assert (=> b!1190183 (=> (not res!791613) (not e!676668))))

(declare-fun lt!541326 () array!76896)

(declare-datatypes ((List!26281 0))(
  ( (Nil!26278) (Cons!26277 (h!27486 (_ BitVec 64)) (t!38815 List!26281)) )
))
(declare-fun arrayNoDuplicates!0 (array!76896 (_ BitVec 32) List!26281) Bool)

(assert (=> b!1190183 (= res!791613 (arrayNoDuplicates!0 lt!541326 #b00000000000000000000000000000000 Nil!26278))))

(declare-fun b!1190184 () Bool)

(declare-fun res!791620 () Bool)

(assert (=> b!1190184 (=> (not res!791620) (not e!676664))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1190184 (= res!791620 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37631 _keys!1208))))))

(declare-fun b!1190185 () Bool)

(declare-fun res!791617 () Bool)

(assert (=> b!1190185 (=> (not res!791617) (not e!676664))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190185 (= res!791617 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!46925 () Bool)

(declare-fun mapRes!46925 () Bool)

(assert (=> mapIsEmpty!46925 mapRes!46925))

(declare-fun mapNonEmpty!46925 () Bool)

(declare-fun tp!89319 () Bool)

(declare-fun e!676663 () Bool)

(assert (=> mapNonEmpty!46925 (= mapRes!46925 (and tp!89319 e!676663))))

(declare-fun mapKey!46925 () (_ BitVec 32))

(declare-datatypes ((V!45213 0))(
  ( (V!45214 (val!15089 Int)) )
))
(declare-datatypes ((ValueCell!14323 0))(
  ( (ValueCellFull!14323 (v!17728 V!45213)) (EmptyCell!14323) )
))
(declare-fun mapValue!46925 () ValueCell!14323)

(declare-datatypes ((array!76898 0))(
  ( (array!76899 (arr!37095 (Array (_ BitVec 32) ValueCell!14323)) (size!37632 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76898)

(declare-fun mapRest!46925 () (Array (_ BitVec 32) ValueCell!14323))

(assert (=> mapNonEmpty!46925 (= (arr!37095 _values!996) (store mapRest!46925 mapKey!46925 mapValue!46925))))

(declare-fun b!1190186 () Bool)

(declare-fun e!676666 () Bool)

(declare-fun e!676665 () Bool)

(assert (=> b!1190186 (= e!676666 (and e!676665 mapRes!46925))))

(declare-fun condMapEmpty!46925 () Bool)

(declare-fun mapDefault!46925 () ValueCell!14323)

