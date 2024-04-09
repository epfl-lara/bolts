; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83868 () Bool)

(assert start!83868)

(declare-fun b_free!19649 () Bool)

(declare-fun b_next!19649 () Bool)

(assert (=> start!83868 (= b_free!19649 (not b_next!19649))))

(declare-fun tp!68390 () Bool)

(declare-fun b_and!31405 () Bool)

(assert (=> start!83868 (= tp!68390 b_and!31405)))

(declare-fun b!979251 () Bool)

(declare-fun res!655456 () Bool)

(declare-fun e!552039 () Bool)

(assert (=> b!979251 (=> (not res!655456) (not e!552039))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!979251 (= res!655456 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!979252 () Bool)

(declare-fun res!655458 () Bool)

(assert (=> b!979252 (=> (not res!655458) (not e!552039))))

(declare-datatypes ((array!61299 0))(
  ( (array!61300 (arr!29503 (Array (_ BitVec 32) (_ BitVec 64))) (size!29983 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61299)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61299 (_ BitVec 32)) Bool)

(assert (=> b!979252 (= res!655458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!979253 () Bool)

(declare-fun e!552040 () Bool)

(assert (=> b!979253 (= e!552039 (not e!552040))))

(declare-fun res!655451 () Bool)

(assert (=> b!979253 (=> res!655451 e!552040)))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!979253 (= res!655451 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29503 _keys!1544) from!1932)))))

(declare-datatypes ((V!35173 0))(
  ( (V!35174 (val!11372 Int)) )
))
(declare-datatypes ((tuple2!14684 0))(
  ( (tuple2!14685 (_1!7352 (_ BitVec 64)) (_2!7352 V!35173)) )
))
(declare-datatypes ((List!20580 0))(
  ( (Nil!20577) (Cons!20576 (h!21738 tuple2!14684) (t!29193 List!20580)) )
))
(declare-datatypes ((ListLongMap!13395 0))(
  ( (ListLongMap!13396 (toList!6713 List!20580)) )
))
(declare-fun lt!434367 () ListLongMap!13395)

(declare-fun lt!434371 () tuple2!14684)

(declare-fun lt!434365 () tuple2!14684)

(declare-fun lt!434373 () ListLongMap!13395)

(declare-fun +!2919 (ListLongMap!13395 tuple2!14684) ListLongMap!13395)

(assert (=> b!979253 (= (+!2919 lt!434367 lt!434371) (+!2919 lt!434373 lt!434365))))

(declare-fun lt!434366 () ListLongMap!13395)

(assert (=> b!979253 (= lt!434373 (+!2919 lt!434366 lt!434371))))

(declare-fun lt!434372 () V!35173)

(assert (=> b!979253 (= lt!434371 (tuple2!14685 (select (arr!29503 _keys!1544) from!1932) lt!434372))))

(assert (=> b!979253 (= lt!434367 (+!2919 lt!434366 lt!434365))))

(declare-fun minValue!1220 () V!35173)

(assert (=> b!979253 (= lt!434365 (tuple2!14685 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32513 0))(
  ( (Unit!32514) )
))
(declare-fun lt!434374 () Unit!32513)

(declare-fun addCommutativeForDiffKeys!581 (ListLongMap!13395 (_ BitVec 64) V!35173 (_ BitVec 64) V!35173) Unit!32513)

(assert (=> b!979253 (= lt!434374 (addCommutativeForDiffKeys!581 lt!434366 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29503 _keys!1544) from!1932) lt!434372))))

(declare-datatypes ((ValueCell!10840 0))(
  ( (ValueCellFull!10840 (v!13934 V!35173)) (EmptyCell!10840) )
))
(declare-datatypes ((array!61301 0))(
  ( (array!61302 (arr!29504 (Array (_ BitVec 32) ValueCell!10840)) (size!29984 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61301)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15302 (ValueCell!10840 V!35173) V!35173)

(declare-fun dynLambda!1755 (Int (_ BitVec 64)) V!35173)

(assert (=> b!979253 (= lt!434372 (get!15302 (select (arr!29504 _values!1278) from!1932) (dynLambda!1755 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434368 () ListLongMap!13395)

(declare-fun lt!434370 () tuple2!14684)

(assert (=> b!979253 (= lt!434366 (+!2919 lt!434368 lt!434370))))

(declare-fun zeroValue!1220 () V!35173)

(assert (=> b!979253 (= lt!434370 (tuple2!14685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3380 (array!61299 array!61301 (_ BitVec 32) (_ BitVec 32) V!35173 V!35173 (_ BitVec 32) Int) ListLongMap!13395)

(assert (=> b!979253 (= lt!434368 (getCurrentListMapNoExtraKeys!3380 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979254 () Bool)

(assert (=> b!979254 (= e!552040 true)))

(assert (=> b!979254 (= lt!434373 (+!2919 (+!2919 lt!434368 lt!434371) lt!434370))))

(declare-fun lt!434369 () Unit!32513)

(assert (=> b!979254 (= lt!434369 (addCommutativeForDiffKeys!581 lt!434368 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29503 _keys!1544) from!1932) lt!434372))))

(declare-fun b!979255 () Bool)

(declare-fun res!655453 () Bool)

(assert (=> b!979255 (=> (not res!655453) (not e!552039))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979255 (= res!655453 (validKeyInArray!0 (select (arr!29503 _keys!1544) from!1932)))))

(declare-fun b!979256 () Bool)

(declare-fun res!655452 () Bool)

(assert (=> b!979256 (=> (not res!655452) (not e!552039))))

(assert (=> b!979256 (= res!655452 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29983 _keys!1544))))))

(declare-fun mapIsEmpty!35993 () Bool)

(declare-fun mapRes!35993 () Bool)

(assert (=> mapIsEmpty!35993 mapRes!35993))

(declare-fun b!979257 () Bool)

(declare-fun res!655454 () Bool)

(assert (=> b!979257 (=> (not res!655454) (not e!552039))))

(assert (=> b!979257 (= res!655454 (and (= (size!29984 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29983 _keys!1544) (size!29984 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979258 () Bool)

(declare-fun e!552044 () Bool)

(declare-fun tp_is_empty!22643 () Bool)

(assert (=> b!979258 (= e!552044 tp_is_empty!22643)))

(declare-fun res!655457 () Bool)

(assert (=> start!83868 (=> (not res!655457) (not e!552039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83868 (= res!655457 (validMask!0 mask!1948))))

(assert (=> start!83868 e!552039))

(assert (=> start!83868 true))

(assert (=> start!83868 tp_is_empty!22643))

(declare-fun e!552043 () Bool)

(declare-fun array_inv!22705 (array!61301) Bool)

(assert (=> start!83868 (and (array_inv!22705 _values!1278) e!552043)))

(assert (=> start!83868 tp!68390))

(declare-fun array_inv!22706 (array!61299) Bool)

(assert (=> start!83868 (array_inv!22706 _keys!1544)))

(declare-fun b!979259 () Bool)

(declare-fun e!552041 () Bool)

(assert (=> b!979259 (= e!552043 (and e!552041 mapRes!35993))))

(declare-fun condMapEmpty!35993 () Bool)

(declare-fun mapDefault!35993 () ValueCell!10840)

