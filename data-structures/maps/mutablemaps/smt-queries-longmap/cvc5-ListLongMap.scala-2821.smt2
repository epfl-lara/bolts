; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40898 () Bool)

(assert start!40898)

(declare-fun b_free!10825 () Bool)

(declare-fun b_next!10825 () Bool)

(assert (=> start!40898 (= b_free!10825 (not b_next!10825))))

(declare-fun tp!38301 () Bool)

(declare-fun b_and!18985 () Bool)

(assert (=> start!40898 (= tp!38301 b_and!18985)))

(declare-fun mapIsEmpty!19885 () Bool)

(declare-fun mapRes!19885 () Bool)

(assert (=> mapIsEmpty!19885 mapRes!19885))

(declare-fun b!453992 () Bool)

(declare-fun e!265675 () Bool)

(declare-fun e!265673 () Bool)

(assert (=> b!453992 (= e!265675 e!265673)))

(declare-fun res!270524 () Bool)

(assert (=> b!453992 (=> (not res!270524) (not e!265673))))

(declare-datatypes ((array!28095 0))(
  ( (array!28096 (arr!13488 (Array (_ BitVec 32) (_ BitVec 64))) (size!13840 (_ BitVec 32))) )
))
(declare-fun lt!206047 () array!28095)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28095 (_ BitVec 32)) Bool)

(assert (=> b!453992 (= res!270524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206047 mask!1025))))

(declare-fun _keys!709 () array!28095)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!453992 (= lt!206047 (array!28096 (store (arr!13488 _keys!709) i!563 k!794) (size!13840 _keys!709)))))

(declare-fun mapNonEmpty!19885 () Bool)

(declare-fun tp!38302 () Bool)

(declare-fun e!265671 () Bool)

(assert (=> mapNonEmpty!19885 (= mapRes!19885 (and tp!38302 e!265671))))

(declare-datatypes ((V!17323 0))(
  ( (V!17324 (val!6126 Int)) )
))
(declare-datatypes ((ValueCell!5738 0))(
  ( (ValueCellFull!5738 (v!8388 V!17323)) (EmptyCell!5738) )
))
(declare-fun mapRest!19885 () (Array (_ BitVec 32) ValueCell!5738))

(declare-datatypes ((array!28097 0))(
  ( (array!28098 (arr!13489 (Array (_ BitVec 32) ValueCell!5738)) (size!13841 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28097)

(declare-fun mapValue!19885 () ValueCell!5738)

(declare-fun mapKey!19885 () (_ BitVec 32))

(assert (=> mapNonEmpty!19885 (= (arr!13489 _values!549) (store mapRest!19885 mapKey!19885 mapValue!19885))))

(declare-fun b!453993 () Bool)

(declare-fun res!270523 () Bool)

(assert (=> b!453993 (=> (not res!270523) (not e!265675))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!453993 (= res!270523 (validKeyInArray!0 k!794))))

(declare-fun b!453994 () Bool)

(declare-fun tp_is_empty!12163 () Bool)

(assert (=> b!453994 (= e!265671 tp_is_empty!12163)))

(declare-fun b!453995 () Bool)

(declare-fun res!270522 () Bool)

(assert (=> b!453995 (=> (not res!270522) (not e!265675))))

(assert (=> b!453995 (= res!270522 (or (= (select (arr!13488 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13488 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!453996 () Bool)

(declare-fun res!270526 () Bool)

(assert (=> b!453996 (=> (not res!270526) (not e!265675))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!453996 (= res!270526 (validMask!0 mask!1025))))

(declare-fun b!453997 () Bool)

(declare-fun res!270530 () Bool)

(assert (=> b!453997 (=> (not res!270530) (not e!265675))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!453997 (= res!270530 (and (= (size!13841 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13840 _keys!709) (size!13841 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!453998 () Bool)

(declare-fun res!270529 () Bool)

(assert (=> b!453998 (=> (not res!270529) (not e!265673))))

(declare-datatypes ((List!8120 0))(
  ( (Nil!8117) (Cons!8116 (h!8972 (_ BitVec 64)) (t!13956 List!8120)) )
))
(declare-fun arrayNoDuplicates!0 (array!28095 (_ BitVec 32) List!8120) Bool)

(assert (=> b!453998 (= res!270529 (arrayNoDuplicates!0 lt!206047 #b00000000000000000000000000000000 Nil!8117))))

(declare-fun b!453999 () Bool)

(assert (=> b!453999 (= e!265673 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!17323)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17323)

(declare-datatypes ((tuple2!8018 0))(
  ( (tuple2!8019 (_1!4019 (_ BitVec 64)) (_2!4019 V!17323)) )
))
(declare-datatypes ((List!8121 0))(
  ( (Nil!8118) (Cons!8117 (h!8973 tuple2!8018) (t!13957 List!8121)) )
))
(declare-datatypes ((ListLongMap!6945 0))(
  ( (ListLongMap!6946 (toList!3488 List!8121)) )
))
(declare-fun lt!206049 () ListLongMap!6945)

(declare-fun v!412 () V!17323)

(declare-fun getCurrentListMapNoExtraKeys!1664 (array!28095 array!28097 (_ BitVec 32) (_ BitVec 32) V!17323 V!17323 (_ BitVec 32) Int) ListLongMap!6945)

(assert (=> b!453999 (= lt!206049 (getCurrentListMapNoExtraKeys!1664 lt!206047 (array!28098 (store (arr!13489 _values!549) i!563 (ValueCellFull!5738 v!412)) (size!13841 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206048 () ListLongMap!6945)

(assert (=> b!453999 (= lt!206048 (getCurrentListMapNoExtraKeys!1664 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!454000 () Bool)

(declare-fun res!270520 () Bool)

(assert (=> b!454000 (=> (not res!270520) (not e!265675))))

(assert (=> b!454000 (= res!270520 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13840 _keys!709))))))

(declare-fun b!454001 () Bool)

(declare-fun res!270521 () Bool)

(assert (=> b!454001 (=> (not res!270521) (not e!265675))))

(assert (=> b!454001 (= res!270521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!454002 () Bool)

(declare-fun res!270527 () Bool)

(assert (=> b!454002 (=> (not res!270527) (not e!265675))))

(assert (=> b!454002 (= res!270527 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8117))))

(declare-fun b!454003 () Bool)

(declare-fun res!270525 () Bool)

(assert (=> b!454003 (=> (not res!270525) (not e!265673))))

(assert (=> b!454003 (= res!270525 (bvsle from!863 i!563))))

(declare-fun b!454004 () Bool)

(declare-fun res!270519 () Bool)

(assert (=> b!454004 (=> (not res!270519) (not e!265675))))

(declare-fun arrayContainsKey!0 (array!28095 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!454004 (= res!270519 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!270528 () Bool)

(assert (=> start!40898 (=> (not res!270528) (not e!265675))))

(assert (=> start!40898 (= res!270528 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13840 _keys!709))))))

(assert (=> start!40898 e!265675))

(assert (=> start!40898 tp_is_empty!12163))

(assert (=> start!40898 tp!38301))

(assert (=> start!40898 true))

(declare-fun e!265674 () Bool)

(declare-fun array_inv!9764 (array!28097) Bool)

(assert (=> start!40898 (and (array_inv!9764 _values!549) e!265674)))

(declare-fun array_inv!9765 (array!28095) Bool)

(assert (=> start!40898 (array_inv!9765 _keys!709)))

(declare-fun b!454005 () Bool)

(declare-fun e!265672 () Bool)

(assert (=> b!454005 (= e!265672 tp_is_empty!12163)))

(declare-fun b!454006 () Bool)

(assert (=> b!454006 (= e!265674 (and e!265672 mapRes!19885))))

(declare-fun condMapEmpty!19885 () Bool)

(declare-fun mapDefault!19885 () ValueCell!5738)

