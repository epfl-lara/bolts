; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83570 () Bool)

(assert start!83570)

(declare-fun b_free!19529 () Bool)

(declare-fun b_next!19529 () Bool)

(assert (=> start!83570 (= b_free!19529 (not b_next!19529))))

(declare-fun tp!67875 () Bool)

(declare-fun b_and!31171 () Bool)

(assert (=> start!83570 (= tp!67875 b_and!31171)))

(declare-fun b!976003 () Bool)

(declare-fun res!653492 () Bool)

(declare-fun e!550063 () Bool)

(assert (=> b!976003 (=> (not res!653492) (not e!550063))))

(declare-datatypes ((array!60881 0))(
  ( (array!60882 (arr!29300 (Array (_ BitVec 32) (_ BitVec 64))) (size!29780 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60881)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60881 (_ BitVec 32)) Bool)

(assert (=> b!976003 (= res!653492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!976004 () Bool)

(declare-fun e!550067 () Bool)

(declare-fun tp_is_empty!22433 () Bool)

(assert (=> b!976004 (= e!550067 tp_is_empty!22433)))

(declare-fun b!976005 () Bool)

(declare-fun res!653496 () Bool)

(assert (=> b!976005 (=> (not res!653496) (not e!550063))))

(declare-datatypes ((V!34893 0))(
  ( (V!34894 (val!11267 Int)) )
))
(declare-datatypes ((ValueCell!10735 0))(
  ( (ValueCellFull!10735 (v!13826 V!34893)) (EmptyCell!10735) )
))
(declare-datatypes ((array!60883 0))(
  ( (array!60884 (arr!29301 (Array (_ BitVec 32) ValueCell!10735)) (size!29781 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60883)

(declare-fun zeroValue!1367 () V!34893)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun minValue!1367 () V!34893)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-datatypes ((tuple2!14596 0))(
  ( (tuple2!14597 (_1!7308 (_ BitVec 64)) (_2!7308 V!34893)) )
))
(declare-datatypes ((List!20468 0))(
  ( (Nil!20465) (Cons!20464 (h!21626 tuple2!14596) (t!28977 List!20468)) )
))
(declare-datatypes ((ListLongMap!13307 0))(
  ( (ListLongMap!13308 (toList!6669 List!20468)) )
))
(declare-fun contains!5700 (ListLongMap!13307 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3854 (array!60881 array!60883 (_ BitVec 32) (_ BitVec 32) V!34893 V!34893 (_ BitVec 32) Int) ListLongMap!13307)

(assert (=> b!976005 (= res!653496 (contains!5700 (getCurrentListMap!3854 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29300 _keys!1717) i!822)))))

(declare-fun res!653495 () Bool)

(assert (=> start!83570 (=> (not res!653495) (not e!550063))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83570 (= res!653495 (validMask!0 mask!2147))))

(assert (=> start!83570 e!550063))

(assert (=> start!83570 true))

(declare-fun e!550068 () Bool)

(declare-fun array_inv!22557 (array!60883) Bool)

(assert (=> start!83570 (and (array_inv!22557 _values!1425) e!550068)))

(assert (=> start!83570 tp_is_empty!22433))

(assert (=> start!83570 tp!67875))

(declare-fun array_inv!22558 (array!60881) Bool)

(assert (=> start!83570 (array_inv!22558 _keys!1717)))

(declare-fun mapIsEmpty!35659 () Bool)

(declare-fun mapRes!35659 () Bool)

(assert (=> mapIsEmpty!35659 mapRes!35659))

(declare-fun b!976006 () Bool)

(declare-fun e!550064 () Bool)

(assert (=> b!976006 (= e!550064 tp_is_empty!22433)))

(declare-fun b!976007 () Bool)

(declare-fun res!653493 () Bool)

(assert (=> b!976007 (=> (not res!653493) (not e!550063))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!976007 (= res!653493 (validKeyInArray!0 (select (arr!29300 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35659 () Bool)

(declare-fun tp!67876 () Bool)

(assert (=> mapNonEmpty!35659 (= mapRes!35659 (and tp!67876 e!550064))))

(declare-fun mapRest!35659 () (Array (_ BitVec 32) ValueCell!10735))

(declare-fun mapValue!35659 () ValueCell!10735)

(declare-fun mapKey!35659 () (_ BitVec 32))

(assert (=> mapNonEmpty!35659 (= (arr!29301 _values!1425) (store mapRest!35659 mapKey!35659 mapValue!35659))))

(declare-fun b!976008 () Bool)

(declare-fun e!550066 () Bool)

(assert (=> b!976008 (= e!550063 e!550066)))

(declare-fun res!653494 () Bool)

(assert (=> b!976008 (=> (not res!653494) (not e!550066))))

(declare-fun lt!432946 () (_ BitVec 64))

(assert (=> b!976008 (= res!653494 (validKeyInArray!0 lt!432946))))

(assert (=> b!976008 (= lt!432946 (select (arr!29300 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun lt!432945 () ListLongMap!13307)

(assert (=> b!976008 (= lt!432945 (getCurrentListMap!3854 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!976009 () Bool)

(assert (=> b!976009 (= e!550066 (not true))))

(declare-fun +!2880 (ListLongMap!13307 tuple2!14596) ListLongMap!13307)

(declare-fun get!15193 (ValueCell!10735 V!34893) V!34893)

(declare-fun dynLambda!1719 (Int (_ BitVec 64)) V!34893)

(assert (=> b!976009 (= lt!432945 (+!2880 (getCurrentListMap!3854 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14597 lt!432946 (get!15193 (select (arr!29301 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1719 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32421 0))(
  ( (Unit!32422) )
))
(declare-fun lt!432944 () Unit!32421)

(declare-fun lemmaListMapRecursiveValidKeyArray!291 (array!60881 array!60883 (_ BitVec 32) (_ BitVec 32) V!34893 V!34893 (_ BitVec 32) Int) Unit!32421)

(assert (=> b!976009 (= lt!432944 (lemmaListMapRecursiveValidKeyArray!291 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!976010 () Bool)

(declare-fun res!653491 () Bool)

(assert (=> b!976010 (=> (not res!653491) (not e!550063))))

(assert (=> b!976010 (= res!653491 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29780 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29780 _keys!1717))))))

(declare-fun b!976011 () Bool)

(declare-fun res!653490 () Bool)

(assert (=> b!976011 (=> (not res!653490) (not e!550063))))

(assert (=> b!976011 (= res!653490 (and (= (size!29781 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29780 _keys!1717) (size!29781 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!976012 () Bool)

(assert (=> b!976012 (= e!550068 (and e!550067 mapRes!35659))))

(declare-fun condMapEmpty!35659 () Bool)

(declare-fun mapDefault!35659 () ValueCell!10735)

