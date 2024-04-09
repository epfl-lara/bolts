; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83546 () Bool)

(assert start!83546)

(declare-fun b_free!19505 () Bool)

(declare-fun b_next!19505 () Bool)

(assert (=> start!83546 (= b_free!19505 (not b_next!19505))))

(declare-fun tp!67804 () Bool)

(declare-fun b_and!31125 () Bool)

(assert (=> start!83546 (= tp!67804 b_and!31125)))

(declare-fun b!975586 () Bool)

(declare-fun res!653205 () Bool)

(declare-fun e!549850 () Bool)

(assert (=> b!975586 (=> (not res!653205) (not e!549850))))

(declare-datatypes ((array!60833 0))(
  ( (array!60834 (arr!29276 (Array (_ BitVec 32) (_ BitVec 64))) (size!29756 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60833)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60833 (_ BitVec 32)) Bool)

(assert (=> b!975586 (= res!653205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!653204 () Bool)

(assert (=> start!83546 (=> (not res!653204) (not e!549850))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83546 (= res!653204 (validMask!0 mask!2147))))

(assert (=> start!83546 e!549850))

(assert (=> start!83546 true))

(declare-datatypes ((V!34861 0))(
  ( (V!34862 (val!11255 Int)) )
))
(declare-datatypes ((ValueCell!10723 0))(
  ( (ValueCellFull!10723 (v!13814 V!34861)) (EmptyCell!10723) )
))
(declare-datatypes ((array!60835 0))(
  ( (array!60836 (arr!29277 (Array (_ BitVec 32) ValueCell!10723)) (size!29757 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60835)

(declare-fun e!549851 () Bool)

(declare-fun array_inv!22537 (array!60835) Bool)

(assert (=> start!83546 (and (array_inv!22537 _values!1425) e!549851)))

(declare-fun tp_is_empty!22409 () Bool)

(assert (=> start!83546 tp_is_empty!22409))

(assert (=> start!83546 tp!67804))

(declare-fun array_inv!22538 (array!60833) Bool)

(assert (=> start!83546 (array_inv!22538 _keys!1717)))

(declare-fun b!975587 () Bool)

(assert (=> b!975587 (= e!549850 false)))

(declare-datatypes ((tuple2!14578 0))(
  ( (tuple2!14579 (_1!7299 (_ BitVec 64)) (_2!7299 V!34861)) )
))
(declare-datatypes ((List!20450 0))(
  ( (Nil!20447) (Cons!20446 (h!21608 tuple2!14578) (t!28935 List!20450)) )
))
(declare-datatypes ((ListLongMap!13289 0))(
  ( (ListLongMap!13290 (toList!6660 List!20450)) )
))
(declare-fun lt!432838 () ListLongMap!13289)

(declare-fun zeroValue!1367 () V!34861)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34861)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3845 (array!60833 array!60835 (_ BitVec 32) (_ BitVec 32) V!34861 V!34861 (_ BitVec 32) Int) ListLongMap!13289)

(assert (=> b!975587 (= lt!432838 (getCurrentListMap!3845 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapNonEmpty!35623 () Bool)

(declare-fun mapRes!35623 () Bool)

(declare-fun tp!67803 () Bool)

(declare-fun e!549848 () Bool)

(assert (=> mapNonEmpty!35623 (= mapRes!35623 (and tp!67803 e!549848))))

(declare-fun mapRest!35623 () (Array (_ BitVec 32) ValueCell!10723))

(declare-fun mapKey!35623 () (_ BitVec 32))

(declare-fun mapValue!35623 () ValueCell!10723)

(assert (=> mapNonEmpty!35623 (= (arr!29277 _values!1425) (store mapRest!35623 mapKey!35623 mapValue!35623))))

(declare-fun b!975588 () Bool)

(declare-fun res!653206 () Bool)

(assert (=> b!975588 (=> (not res!653206) (not e!549850))))

(assert (=> b!975588 (= res!653206 (and (= (size!29757 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29756 _keys!1717) (size!29757 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975589 () Bool)

(declare-fun res!653203 () Bool)

(assert (=> b!975589 (=> (not res!653203) (not e!549850))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975589 (= res!653203 (validKeyInArray!0 (select (arr!29276 _keys!1717) i!822)))))

(declare-fun b!975590 () Bool)

(declare-fun res!653209 () Bool)

(assert (=> b!975590 (=> (not res!653209) (not e!549850))))

(assert (=> b!975590 (= res!653209 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29756 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29756 _keys!1717))))))

(declare-fun b!975591 () Bool)

(assert (=> b!975591 (= e!549848 tp_is_empty!22409)))

(declare-fun mapIsEmpty!35623 () Bool)

(assert (=> mapIsEmpty!35623 mapRes!35623))

(declare-fun b!975592 () Bool)

(declare-fun e!549852 () Bool)

(assert (=> b!975592 (= e!549852 tp_is_empty!22409)))

(declare-fun b!975593 () Bool)

(declare-fun res!653207 () Bool)

(assert (=> b!975593 (=> (not res!653207) (not e!549850))))

(declare-fun contains!5692 (ListLongMap!13289 (_ BitVec 64)) Bool)

(assert (=> b!975593 (= res!653207 (contains!5692 (getCurrentListMap!3845 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29276 _keys!1717) i!822)))))

(declare-fun b!975594 () Bool)

(declare-fun res!653208 () Bool)

(assert (=> b!975594 (=> (not res!653208) (not e!549850))))

(declare-datatypes ((List!20451 0))(
  ( (Nil!20448) (Cons!20447 (h!21609 (_ BitVec 64)) (t!28936 List!20451)) )
))
(declare-fun arrayNoDuplicates!0 (array!60833 (_ BitVec 32) List!20451) Bool)

(assert (=> b!975594 (= res!653208 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20448))))

(declare-fun b!975595 () Bool)

(assert (=> b!975595 (= e!549851 (and e!549852 mapRes!35623))))

(declare-fun condMapEmpty!35623 () Bool)

(declare-fun mapDefault!35623 () ValueCell!10723)

