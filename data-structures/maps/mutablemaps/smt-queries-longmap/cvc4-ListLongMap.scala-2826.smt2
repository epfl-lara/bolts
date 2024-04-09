; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40932 () Bool)

(assert start!40932)

(declare-fun b_free!10859 () Bool)

(declare-fun b_next!10859 () Bool)

(assert (=> start!40932 (= b_free!10859 (not b_next!10859))))

(declare-fun tp!38403 () Bool)

(declare-fun b_and!19019 () Bool)

(assert (=> start!40932 (= tp!38403 b_and!19019)))

(declare-fun b!454757 () Bool)

(declare-fun res!271139 () Bool)

(declare-fun e!265977 () Bool)

(assert (=> b!454757 (=> (not res!271139) (not e!265977))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!28163 0))(
  ( (array!28164 (arr!13522 (Array (_ BitVec 32) (_ BitVec 64))) (size!13874 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28163)

(assert (=> b!454757 (= res!271139 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13874 _keys!709))))))

(declare-fun b!454758 () Bool)

(declare-fun e!265979 () Bool)

(declare-fun tp_is_empty!12197 () Bool)

(assert (=> b!454758 (= e!265979 tp_is_empty!12197)))

(declare-fun b!454759 () Bool)

(declare-fun e!265982 () Bool)

(assert (=> b!454759 (= e!265982 tp_is_empty!12197)))

(declare-fun b!454760 () Bool)

(declare-fun e!265980 () Bool)

(assert (=> b!454760 (= e!265977 e!265980)))

(declare-fun res!271132 () Bool)

(assert (=> b!454760 (=> (not res!271132) (not e!265980))))

(declare-fun lt!206202 () array!28163)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28163 (_ BitVec 32)) Bool)

(assert (=> b!454760 (= res!271132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206202 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!454760 (= lt!206202 (array!28164 (store (arr!13522 _keys!709) i!563 k!794) (size!13874 _keys!709)))))

(declare-fun b!454761 () Bool)

(declare-fun res!271135 () Bool)

(assert (=> b!454761 (=> (not res!271135) (not e!265977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454761 (= res!271135 (validMask!0 mask!1025))))

(declare-fun b!454762 () Bool)

(declare-fun res!271138 () Bool)

(assert (=> b!454762 (=> (not res!271138) (not e!265977))))

(declare-fun arrayContainsKey!0 (array!28163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!454762 (= res!271138 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!454764 () Bool)

(declare-fun res!271134 () Bool)

(assert (=> b!454764 (=> (not res!271134) (not e!265977))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17367 0))(
  ( (V!17368 (val!6143 Int)) )
))
(declare-datatypes ((ValueCell!5755 0))(
  ( (ValueCellFull!5755 (v!8405 V!17367)) (EmptyCell!5755) )
))
(declare-datatypes ((array!28165 0))(
  ( (array!28166 (arr!13523 (Array (_ BitVec 32) ValueCell!5755)) (size!13875 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28165)

(assert (=> b!454764 (= res!271134 (and (= (size!13875 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13874 _keys!709) (size!13875 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!454765 () Bool)

(declare-fun res!271133 () Bool)

(assert (=> b!454765 (=> (not res!271133) (not e!265977))))

(assert (=> b!454765 (= res!271133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19936 () Bool)

(declare-fun mapRes!19936 () Bool)

(assert (=> mapIsEmpty!19936 mapRes!19936))

(declare-fun b!454766 () Bool)

(declare-fun res!271137 () Bool)

(assert (=> b!454766 (=> (not res!271137) (not e!265980))))

(declare-datatypes ((List!8148 0))(
  ( (Nil!8145) (Cons!8144 (h!9000 (_ BitVec 64)) (t!13984 List!8148)) )
))
(declare-fun arrayNoDuplicates!0 (array!28163 (_ BitVec 32) List!8148) Bool)

(assert (=> b!454766 (= res!271137 (arrayNoDuplicates!0 lt!206202 #b00000000000000000000000000000000 Nil!8145))))

(declare-fun mapNonEmpty!19936 () Bool)

(declare-fun tp!38404 () Bool)

(assert (=> mapNonEmpty!19936 (= mapRes!19936 (and tp!38404 e!265979))))

(declare-fun mapRest!19936 () (Array (_ BitVec 32) ValueCell!5755))

(declare-fun mapKey!19936 () (_ BitVec 32))

(declare-fun mapValue!19936 () ValueCell!5755)

(assert (=> mapNonEmpty!19936 (= (arr!13523 _values!549) (store mapRest!19936 mapKey!19936 mapValue!19936))))

(declare-fun b!454767 () Bool)

(declare-fun res!271141 () Bool)

(assert (=> b!454767 (=> (not res!271141) (not e!265977))))

(assert (=> b!454767 (= res!271141 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8145))))

(declare-fun b!454768 () Bool)

(assert (=> b!454768 (= e!265980 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!17367)

(declare-fun zeroValue!515 () V!17367)

(declare-fun v!412 () V!17367)

(declare-datatypes ((tuple2!8042 0))(
  ( (tuple2!8043 (_1!4031 (_ BitVec 64)) (_2!4031 V!17367)) )
))
(declare-datatypes ((List!8149 0))(
  ( (Nil!8146) (Cons!8145 (h!9001 tuple2!8042) (t!13985 List!8149)) )
))
(declare-datatypes ((ListLongMap!6969 0))(
  ( (ListLongMap!6970 (toList!3500 List!8149)) )
))
(declare-fun lt!206201 () ListLongMap!6969)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1676 (array!28163 array!28165 (_ BitVec 32) (_ BitVec 32) V!17367 V!17367 (_ BitVec 32) Int) ListLongMap!6969)

(assert (=> b!454768 (= lt!206201 (getCurrentListMapNoExtraKeys!1676 lt!206202 (array!28166 (store (arr!13523 _values!549) i!563 (ValueCellFull!5755 v!412)) (size!13875 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206200 () ListLongMap!6969)

(assert (=> b!454768 (= lt!206200 (getCurrentListMapNoExtraKeys!1676 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!454769 () Bool)

(declare-fun res!271142 () Bool)

(assert (=> b!454769 (=> (not res!271142) (not e!265977))))

(assert (=> b!454769 (= res!271142 (or (= (select (arr!13522 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13522 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!454763 () Bool)

(declare-fun e!265981 () Bool)

(assert (=> b!454763 (= e!265981 (and e!265982 mapRes!19936))))

(declare-fun condMapEmpty!19936 () Bool)

(declare-fun mapDefault!19936 () ValueCell!5755)

