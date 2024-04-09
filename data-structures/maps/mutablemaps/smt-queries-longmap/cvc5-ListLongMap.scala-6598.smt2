; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83500 () Bool)

(assert start!83500)

(declare-fun b_free!19459 () Bool)

(declare-fun b_next!19459 () Bool)

(assert (=> start!83500 (= b_free!19459 (not b_next!19459))))

(declare-fun tp!67666 () Bool)

(declare-fun b_and!31079 () Bool)

(assert (=> start!83500 (= tp!67666 b_and!31079)))

(declare-fun b!974887 () Bool)

(declare-fun res!652716 () Bool)

(declare-fun e!549497 () Bool)

(assert (=> b!974887 (=> (not res!652716) (not e!549497))))

(declare-datatypes ((array!60741 0))(
  ( (array!60742 (arr!29230 (Array (_ BitVec 32) (_ BitVec 64))) (size!29710 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60741)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60741 (_ BitVec 32)) Bool)

(assert (=> b!974887 (= res!652716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!974888 () Bool)

(assert (=> b!974888 (= e!549497 false)))

(declare-datatypes ((V!34801 0))(
  ( (V!34802 (val!11232 Int)) )
))
(declare-datatypes ((ValueCell!10700 0))(
  ( (ValueCellFull!10700 (v!13791 V!34801)) (EmptyCell!10700) )
))
(declare-datatypes ((array!60743 0))(
  ( (array!60744 (arr!29231 (Array (_ BitVec 32) ValueCell!10700)) (size!29711 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60743)

(declare-datatypes ((tuple2!14534 0))(
  ( (tuple2!14535 (_1!7277 (_ BitVec 64)) (_2!7277 V!34801)) )
))
(declare-datatypes ((List!20410 0))(
  ( (Nil!20407) (Cons!20406 (h!21568 tuple2!14534) (t!28895 List!20410)) )
))
(declare-datatypes ((ListLongMap!13245 0))(
  ( (ListLongMap!13246 (toList!6638 List!20410)) )
))
(declare-fun lt!432769 () ListLongMap!13245)

(declare-fun zeroValue!1367 () V!34801)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34801)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3823 (array!60741 array!60743 (_ BitVec 32) (_ BitVec 32) V!34801 V!34801 (_ BitVec 32) Int) ListLongMap!13245)

(assert (=> b!974888 (= lt!432769 (getCurrentListMap!3823 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!974889 () Bool)

(declare-fun res!652712 () Bool)

(assert (=> b!974889 (=> (not res!652712) (not e!549497))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974889 (= res!652712 (validKeyInArray!0 (select (arr!29230 _keys!1717) i!822)))))

(declare-fun b!974890 () Bool)

(declare-fun res!652711 () Bool)

(assert (=> b!974890 (=> (not res!652711) (not e!549497))))

(declare-fun contains!5673 (ListLongMap!13245 (_ BitVec 64)) Bool)

(assert (=> b!974890 (= res!652711 (contains!5673 (getCurrentListMap!3823 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29230 _keys!1717) i!822)))))

(declare-fun b!974891 () Bool)

(declare-fun e!549494 () Bool)

(declare-fun tp_is_empty!22363 () Bool)

(assert (=> b!974891 (= e!549494 tp_is_empty!22363)))

(declare-fun b!974892 () Bool)

(declare-fun e!549495 () Bool)

(assert (=> b!974892 (= e!549495 tp_is_empty!22363)))

(declare-fun b!974893 () Bool)

(declare-fun res!652714 () Bool)

(assert (=> b!974893 (=> (not res!652714) (not e!549497))))

(assert (=> b!974893 (= res!652714 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29710 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29710 _keys!1717))))))

(declare-fun mapNonEmpty!35554 () Bool)

(declare-fun mapRes!35554 () Bool)

(declare-fun tp!67665 () Bool)

(assert (=> mapNonEmpty!35554 (= mapRes!35554 (and tp!67665 e!549494))))

(declare-fun mapKey!35554 () (_ BitVec 32))

(declare-fun mapValue!35554 () ValueCell!10700)

(declare-fun mapRest!35554 () (Array (_ BitVec 32) ValueCell!10700))

(assert (=> mapNonEmpty!35554 (= (arr!29231 _values!1425) (store mapRest!35554 mapKey!35554 mapValue!35554))))

(declare-fun b!974894 () Bool)

(declare-fun e!549496 () Bool)

(assert (=> b!974894 (= e!549496 (and e!549495 mapRes!35554))))

(declare-fun condMapEmpty!35554 () Bool)

(declare-fun mapDefault!35554 () ValueCell!10700)

