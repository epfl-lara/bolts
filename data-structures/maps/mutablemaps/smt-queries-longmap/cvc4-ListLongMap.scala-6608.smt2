; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83564 () Bool)

(assert start!83564)

(declare-fun b_free!19523 () Bool)

(declare-fun b_next!19523 () Bool)

(assert (=> start!83564 (= b_free!19523 (not b_next!19523))))

(declare-fun tp!67857 () Bool)

(declare-fun b_and!31159 () Bool)

(assert (=> start!83564 (= tp!67857 b_and!31159)))

(declare-fun mapNonEmpty!35650 () Bool)

(declare-fun mapRes!35650 () Bool)

(declare-fun tp!67858 () Bool)

(declare-fun e!550014 () Bool)

(assert (=> mapNonEmpty!35650 (= mapRes!35650 (and tp!67858 e!550014))))

(declare-datatypes ((V!34885 0))(
  ( (V!34886 (val!11264 Int)) )
))
(declare-datatypes ((ValueCell!10732 0))(
  ( (ValueCellFull!10732 (v!13823 V!34885)) (EmptyCell!10732) )
))
(declare-fun mapRest!35650 () (Array (_ BitVec 32) ValueCell!10732))

(declare-fun mapKey!35650 () (_ BitVec 32))

(declare-fun mapValue!35650 () ValueCell!10732)

(declare-datatypes ((array!60869 0))(
  ( (array!60870 (arr!29294 (Array (_ BitVec 32) ValueCell!10732)) (size!29774 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60869)

(assert (=> mapNonEmpty!35650 (= (arr!29294 _values!1425) (store mapRest!35650 mapKey!35650 mapValue!35650))))

(declare-fun res!653423 () Bool)

(declare-fun e!550010 () Bool)

(assert (=> start!83564 (=> (not res!653423) (not e!550010))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83564 (= res!653423 (validMask!0 mask!2147))))

(assert (=> start!83564 e!550010))

(assert (=> start!83564 true))

(declare-fun e!550012 () Bool)

(declare-fun array_inv!22551 (array!60869) Bool)

(assert (=> start!83564 (and (array_inv!22551 _values!1425) e!550012)))

(declare-fun tp_is_empty!22427 () Bool)

(assert (=> start!83564 tp_is_empty!22427))

(assert (=> start!83564 tp!67857))

(declare-datatypes ((array!60871 0))(
  ( (array!60872 (arr!29295 (Array (_ BitVec 32) (_ BitVec 64))) (size!29775 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60871)

(declare-fun array_inv!22552 (array!60871) Bool)

(assert (=> start!83564 (array_inv!22552 _keys!1717)))

(declare-fun b!975898 () Bool)

(declare-fun e!550013 () Bool)

(assert (=> b!975898 (= e!550013 tp_is_empty!22427)))

(declare-fun mapIsEmpty!35650 () Bool)

(assert (=> mapIsEmpty!35650 mapRes!35650))

(declare-fun b!975899 () Bool)

(declare-fun res!653419 () Bool)

(assert (=> b!975899 (=> (not res!653419) (not e!550010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60871 (_ BitVec 32)) Bool)

(assert (=> b!975899 (= res!653419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!975900 () Bool)

(assert (=> b!975900 (= e!550014 tp_is_empty!22427)))

(declare-fun b!975901 () Bool)

(declare-fun res!653424 () Bool)

(assert (=> b!975901 (=> (not res!653424) (not e!550010))))

(declare-datatypes ((List!20463 0))(
  ( (Nil!20460) (Cons!20459 (h!21621 (_ BitVec 64)) (t!28966 List!20463)) )
))
(declare-fun arrayNoDuplicates!0 (array!60871 (_ BitVec 32) List!20463) Bool)

(assert (=> b!975901 (= res!653424 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20460))))

(declare-fun b!975902 () Bool)

(declare-fun res!653422 () Bool)

(assert (=> b!975902 (=> (not res!653422) (not e!550010))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!975902 (= res!653422 (and (= (size!29774 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29775 _keys!1717) (size!29774 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975903 () Bool)

(declare-fun res!653425 () Bool)

(assert (=> b!975903 (=> (not res!653425) (not e!550010))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!975903 (= res!653425 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29775 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29775 _keys!1717))))))

(declare-fun b!975904 () Bool)

(declare-fun res!653418 () Bool)

(assert (=> b!975904 (=> (not res!653418) (not e!550010))))

(declare-fun zeroValue!1367 () V!34885)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34885)

(declare-datatypes ((tuple2!14592 0))(
  ( (tuple2!14593 (_1!7306 (_ BitVec 64)) (_2!7306 V!34885)) )
))
(declare-datatypes ((List!20464 0))(
  ( (Nil!20461) (Cons!20460 (h!21622 tuple2!14592) (t!28967 List!20464)) )
))
(declare-datatypes ((ListLongMap!13303 0))(
  ( (ListLongMap!13304 (toList!6667 List!20464)) )
))
(declare-fun contains!5698 (ListLongMap!13303 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3852 (array!60871 array!60869 (_ BitVec 32) (_ BitVec 32) V!34885 V!34885 (_ BitVec 32) Int) ListLongMap!13303)

(assert (=> b!975904 (= res!653418 (contains!5698 (getCurrentListMap!3852 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29295 _keys!1717) i!822)))))

(declare-fun b!975905 () Bool)

(declare-fun res!653420 () Bool)

(assert (=> b!975905 (=> (not res!653420) (not e!550010))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975905 (= res!653420 (validKeyInArray!0 (select (arr!29295 _keys!1717) i!822)))))

(declare-fun b!975906 () Bool)

(assert (=> b!975906 (= e!550012 (and e!550013 mapRes!35650))))

(declare-fun condMapEmpty!35650 () Bool)

(declare-fun mapDefault!35650 () ValueCell!10732)

