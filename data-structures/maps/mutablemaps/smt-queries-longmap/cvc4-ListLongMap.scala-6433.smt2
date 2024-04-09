; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82426 () Bool)

(assert start!82426)

(declare-fun b_free!18665 () Bool)

(declare-fun b_next!18665 () Bool)

(assert (=> start!82426 (= b_free!18665 (not b_next!18665))))

(declare-fun tp!64965 () Bool)

(declare-fun b_and!30171 () Bool)

(assert (=> start!82426 (= tp!64965 b_and!30171)))

(declare-fun mapNonEmpty!34045 () Bool)

(declare-fun mapRes!34045 () Bool)

(declare-fun tp!64966 () Bool)

(declare-fun e!541550 () Bool)

(assert (=> mapNonEmpty!34045 (= mapRes!34045 (and tp!64966 e!541550))))

(declare-datatypes ((V!33485 0))(
  ( (V!33486 (val!10739 Int)) )
))
(declare-datatypes ((ValueCell!10207 0))(
  ( (ValueCellFull!10207 (v!13296 V!33485)) (EmptyCell!10207) )
))
(declare-fun mapRest!34045 () (Array (_ BitVec 32) ValueCell!10207))

(declare-fun mapValue!34045 () ValueCell!10207)

(declare-datatypes ((array!58853 0))(
  ( (array!58854 (arr!28296 (Array (_ BitVec 32) ValueCell!10207)) (size!28776 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58853)

(declare-fun mapKey!34045 () (_ BitVec 32))

(assert (=> mapNonEmpty!34045 (= (arr!28296 _values!1386) (store mapRest!34045 mapKey!34045 mapValue!34045))))

(declare-fun b!960658 () Bool)

(declare-fun e!541553 () Bool)

(declare-fun i!793 () (_ BitVec 32))

(assert (=> b!960658 (= e!541553 (not (bvsge i!793 #b00000000000000000000000000000000)))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun minValue!1328 () V!33485)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58855 0))(
  ( (array!58856 (arr!28297 (Array (_ BitVec 32) (_ BitVec 64))) (size!28777 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58855)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33485)

(declare-datatypes ((tuple2!13938 0))(
  ( (tuple2!13939 (_1!6979 (_ BitVec 64)) (_2!6979 V!33485)) )
))
(declare-datatypes ((List!19796 0))(
  ( (Nil!19793) (Cons!19792 (h!20954 tuple2!13938) (t!28167 List!19796)) )
))
(declare-datatypes ((ListLongMap!12649 0))(
  ( (ListLongMap!12650 (toList!6340 List!19796)) )
))
(declare-fun contains!5390 (ListLongMap!12649 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3525 (array!58855 array!58853 (_ BitVec 32) (_ BitVec 32) V!33485 V!33485 (_ BitVec 32) Int) ListLongMap!12649)

(assert (=> b!960658 (contains!5390 (getCurrentListMap!3525 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28297 _keys!1668) i!793))))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((Unit!32173 0))(
  ( (Unit!32174) )
))
(declare-fun lt!430634 () Unit!32173)

(declare-fun lemmaInListMapFromThenInFromSmaller!16 (array!58855 array!58853 (_ BitVec 32) (_ BitVec 32) V!33485 V!33485 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32173)

(assert (=> b!960658 (= lt!430634 (lemmaInListMapFromThenInFromSmaller!16 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(declare-fun b!960659 () Bool)

(declare-fun res!643162 () Bool)

(assert (=> b!960659 (=> (not res!643162) (not e!541553))))

(assert (=> b!960659 (= res!643162 (contains!5390 (getCurrentListMap!3525 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28297 _keys!1668) i!793)))))

(declare-fun b!960660 () Bool)

(declare-fun res!643161 () Bool)

(assert (=> b!960660 (=> (not res!643161) (not e!541553))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960660 (= res!643161 (validKeyInArray!0 (select (arr!28297 _keys!1668) i!793)))))

(declare-fun b!960661 () Bool)

(declare-fun e!541551 () Bool)

(declare-fun e!541549 () Bool)

(assert (=> b!960661 (= e!541551 (and e!541549 mapRes!34045))))

(declare-fun condMapEmpty!34045 () Bool)

(declare-fun mapDefault!34045 () ValueCell!10207)

