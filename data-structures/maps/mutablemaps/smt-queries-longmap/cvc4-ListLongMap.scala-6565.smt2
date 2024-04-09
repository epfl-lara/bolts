; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83306 () Bool)

(assert start!83306)

(declare-fun b_free!19271 () Bool)

(declare-fun b_next!19271 () Bool)

(assert (=> start!83306 (= b_free!19271 (not b_next!19271))))

(declare-fun tp!67092 () Bool)

(declare-fun b_and!30781 () Bool)

(assert (=> start!83306 (= tp!67092 b_and!30781)))

(declare-fun b!971731 () Bool)

(declare-fun res!650541 () Bool)

(declare-fun e!547791 () Bool)

(assert (=> b!971731 (=> (not res!650541) (not e!547791))))

(declare-datatypes ((array!60369 0))(
  ( (array!60370 (arr!29044 (Array (_ BitVec 32) (_ BitVec 64))) (size!29524 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60369)

(declare-datatypes ((List!20268 0))(
  ( (Nil!20265) (Cons!20264 (h!21426 (_ BitVec 64)) (t!28645 List!20268)) )
))
(declare-fun arrayNoDuplicates!0 (array!60369 (_ BitVec 32) List!20268) Bool)

(assert (=> b!971731 (= res!650541 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20265))))

(declare-fun b!971732 () Bool)

(declare-fun e!547787 () Bool)

(declare-fun tp_is_empty!22169 () Bool)

(assert (=> b!971732 (= e!547787 tp_is_empty!22169)))

(declare-fun b!971733 () Bool)

(declare-fun res!650543 () Bool)

(assert (=> b!971733 (=> (not res!650543) (not e!547791))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34541 0))(
  ( (V!34542 (val!11135 Int)) )
))
(declare-datatypes ((ValueCell!10603 0))(
  ( (ValueCellFull!10603 (v!13694 V!34541)) (EmptyCell!10603) )
))
(declare-datatypes ((array!60371 0))(
  ( (array!60372 (arr!29045 (Array (_ BitVec 32) ValueCell!10603)) (size!29525 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60371)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!971733 (= res!650543 (and (= (size!29525 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29524 _keys!1717) (size!29525 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!971734 () Bool)

(declare-fun res!650542 () Bool)

(assert (=> b!971734 (=> (not res!650542) (not e!547791))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!971734 (= res!650542 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29524 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29524 _keys!1717))))))

(declare-fun b!971735 () Bool)

(declare-fun res!650538 () Bool)

(assert (=> b!971735 (=> (not res!650538) (not e!547791))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60369 (_ BitVec 32)) Bool)

(assert (=> b!971735 (= res!650538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapIsEmpty!35263 () Bool)

(declare-fun mapRes!35263 () Bool)

(assert (=> mapIsEmpty!35263 mapRes!35263))

(declare-fun res!650540 () Bool)

(assert (=> start!83306 (=> (not res!650540) (not e!547791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83306 (= res!650540 (validMask!0 mask!2147))))

(assert (=> start!83306 e!547791))

(assert (=> start!83306 true))

(declare-fun e!547790 () Bool)

(declare-fun array_inv!22367 (array!60371) Bool)

(assert (=> start!83306 (and (array_inv!22367 _values!1425) e!547790)))

(assert (=> start!83306 tp_is_empty!22169))

(assert (=> start!83306 tp!67092))

(declare-fun array_inv!22368 (array!60369) Bool)

(assert (=> start!83306 (array_inv!22368 _keys!1717)))

(declare-fun b!971736 () Bool)

(declare-fun e!547789 () Bool)

(assert (=> b!971736 (= e!547789 tp_is_empty!22169)))

(declare-fun b!971737 () Bool)

(declare-fun e!547786 () Bool)

(assert (=> b!971737 (= e!547791 e!547786)))

(declare-fun res!650545 () Bool)

(assert (=> b!971737 (=> (not res!650545) (not e!547786))))

(declare-fun lt!431837 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971737 (= res!650545 (validKeyInArray!0 lt!431837))))

(assert (=> b!971737 (= lt!431837 (select (arr!29044 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun zeroValue!1367 () V!34541)

(declare-datatypes ((tuple2!14376 0))(
  ( (tuple2!14377 (_1!7198 (_ BitVec 64)) (_2!7198 V!34541)) )
))
(declare-datatypes ((List!20269 0))(
  ( (Nil!20266) (Cons!20265 (h!21427 tuple2!14376) (t!28646 List!20269)) )
))
(declare-datatypes ((ListLongMap!13087 0))(
  ( (ListLongMap!13088 (toList!6559 List!20269)) )
))
(declare-fun lt!431838 () ListLongMap!13087)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34541)

(declare-fun getCurrentListMap!3744 (array!60369 array!60371 (_ BitVec 32) (_ BitVec 32) V!34541 V!34541 (_ BitVec 32) Int) ListLongMap!13087)

(assert (=> b!971737 (= lt!431838 (getCurrentListMap!3744 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapNonEmpty!35263 () Bool)

(declare-fun tp!67093 () Bool)

(assert (=> mapNonEmpty!35263 (= mapRes!35263 (and tp!67093 e!547787))))

(declare-fun mapValue!35263 () ValueCell!10603)

(declare-fun mapKey!35263 () (_ BitVec 32))

(declare-fun mapRest!35263 () (Array (_ BitVec 32) ValueCell!10603))

(assert (=> mapNonEmpty!35263 (= (arr!29045 _values!1425) (store mapRest!35263 mapKey!35263 mapValue!35263))))

(declare-fun b!971738 () Bool)

(assert (=> b!971738 (= e!547786 (not true))))

(declare-fun +!2840 (ListLongMap!13087 tuple2!14376) ListLongMap!13087)

(declare-fun get!15065 (ValueCell!10603 V!34541) V!34541)

(declare-fun dynLambda!1679 (Int (_ BitVec 64)) V!34541)

(assert (=> b!971738 (= lt!431838 (+!2840 (getCurrentListMap!3744 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14377 lt!431837 (get!15065 (select (arr!29045 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1679 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32341 0))(
  ( (Unit!32342) )
))
(declare-fun lt!431839 () Unit!32341)

(declare-fun lemmaListMapRecursiveValidKeyArray!251 (array!60369 array!60371 (_ BitVec 32) (_ BitVec 32) V!34541 V!34541 (_ BitVec 32) Int) Unit!32341)

(assert (=> b!971738 (= lt!431839 (lemmaListMapRecursiveValidKeyArray!251 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971739 () Bool)

(declare-fun res!650539 () Bool)

(assert (=> b!971739 (=> (not res!650539) (not e!547791))))

(declare-fun contains!5609 (ListLongMap!13087 (_ BitVec 64)) Bool)

(assert (=> b!971739 (= res!650539 (contains!5609 (getCurrentListMap!3744 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29044 _keys!1717) i!822)))))

(declare-fun b!971740 () Bool)

(assert (=> b!971740 (= e!547790 (and e!547789 mapRes!35263))))

(declare-fun condMapEmpty!35263 () Bool)

(declare-fun mapDefault!35263 () ValueCell!10603)

