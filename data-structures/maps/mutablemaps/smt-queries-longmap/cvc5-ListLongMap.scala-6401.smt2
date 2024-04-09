; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82230 () Bool)

(assert start!82230)

(declare-fun b_free!18475 () Bool)

(declare-fun b_next!18475 () Bool)

(assert (=> start!82230 (= b_free!18475 (not b_next!18475))))

(declare-fun tp!64386 () Bool)

(declare-fun b_and!29981 () Bool)

(assert (=> start!82230 (= tp!64386 b_and!29981)))

(declare-fun b!957941 () Bool)

(declare-fun res!641329 () Bool)

(declare-fun e!540081 () Bool)

(assert (=> b!957941 (=> (not res!641329) (not e!540081))))

(declare-datatypes ((array!58479 0))(
  ( (array!58480 (arr!28109 (Array (_ BitVec 32) (_ BitVec 64))) (size!28589 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58479)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!957941 (= res!641329 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28589 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28589 _keys!1668))))))

(declare-fun b!957942 () Bool)

(assert (=> b!957942 (= e!540081 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33225 0))(
  ( (V!33226 (val!10641 Int)) )
))
(declare-fun minValue!1328 () V!33225)

(declare-fun lt!430349 () Bool)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10109 0))(
  ( (ValueCellFull!10109 (v!13198 V!33225)) (EmptyCell!10109) )
))
(declare-datatypes ((array!58481 0))(
  ( (array!58482 (arr!28110 (Array (_ BitVec 32) ValueCell!10109)) (size!28590 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58481)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33225)

(declare-datatypes ((tuple2!13804 0))(
  ( (tuple2!13805 (_1!6912 (_ BitVec 64)) (_2!6912 V!33225)) )
))
(declare-datatypes ((List!19672 0))(
  ( (Nil!19669) (Cons!19668 (h!20830 tuple2!13804) (t!28043 List!19672)) )
))
(declare-datatypes ((ListLongMap!12515 0))(
  ( (ListLongMap!12516 (toList!6273 List!19672)) )
))
(declare-fun contains!5326 (ListLongMap!12515 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3458 (array!58479 array!58481 (_ BitVec 32) (_ BitVec 32) V!33225 V!33225 (_ BitVec 32) Int) ListLongMap!12515)

(assert (=> b!957942 (= lt!430349 (contains!5326 (getCurrentListMap!3458 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28109 _keys!1668) i!793)))))

(declare-fun b!957943 () Bool)

(declare-fun res!641326 () Bool)

(assert (=> b!957943 (=> (not res!641326) (not e!540081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58479 (_ BitVec 32)) Bool)

(assert (=> b!957943 (= res!641326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957944 () Bool)

(declare-fun res!641328 () Bool)

(assert (=> b!957944 (=> (not res!641328) (not e!540081))))

(assert (=> b!957944 (= res!641328 (and (= (size!28590 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28589 _keys!1668) (size!28590 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!33751 () Bool)

(declare-fun mapRes!33751 () Bool)

(declare-fun tp!64387 () Bool)

(declare-fun e!540083 () Bool)

(assert (=> mapNonEmpty!33751 (= mapRes!33751 (and tp!64387 e!540083))))

(declare-fun mapRest!33751 () (Array (_ BitVec 32) ValueCell!10109))

(declare-fun mapValue!33751 () ValueCell!10109)

(declare-fun mapKey!33751 () (_ BitVec 32))

(assert (=> mapNonEmpty!33751 (= (arr!28110 _values!1386) (store mapRest!33751 mapKey!33751 mapValue!33751))))

(declare-fun mapIsEmpty!33751 () Bool)

(assert (=> mapIsEmpty!33751 mapRes!33751))

(declare-fun b!957945 () Bool)

(declare-fun tp_is_empty!21181 () Bool)

(assert (=> b!957945 (= e!540083 tp_is_empty!21181)))

(declare-fun b!957946 () Bool)

(declare-fun e!540080 () Bool)

(assert (=> b!957946 (= e!540080 tp_is_empty!21181)))

(declare-fun res!641331 () Bool)

(assert (=> start!82230 (=> (not res!641331) (not e!540081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82230 (= res!641331 (validMask!0 mask!2088))))

(assert (=> start!82230 e!540081))

(assert (=> start!82230 true))

(assert (=> start!82230 tp_is_empty!21181))

(declare-fun array_inv!21747 (array!58479) Bool)

(assert (=> start!82230 (array_inv!21747 _keys!1668)))

(declare-fun e!540079 () Bool)

(declare-fun array_inv!21748 (array!58481) Bool)

(assert (=> start!82230 (and (array_inv!21748 _values!1386) e!540079)))

(assert (=> start!82230 tp!64386))

(declare-fun b!957947 () Bool)

(assert (=> b!957947 (= e!540079 (and e!540080 mapRes!33751))))

(declare-fun condMapEmpty!33751 () Bool)

(declare-fun mapDefault!33751 () ValueCell!10109)

