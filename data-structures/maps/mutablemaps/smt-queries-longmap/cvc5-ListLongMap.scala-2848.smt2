; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41082 () Bool)

(assert start!41082)

(declare-fun b_free!10987 () Bool)

(declare-fun b_next!10987 () Bool)

(assert (=> start!41082 (= b_free!10987 (not b_next!10987))))

(declare-fun tp!38790 () Bool)

(declare-fun b_and!19199 () Bool)

(assert (=> start!41082 (= tp!38790 b_and!19199)))

(declare-fun b!458002 () Bool)

(declare-fun e!267413 () Bool)

(declare-fun e!267411 () Bool)

(assert (=> b!458002 (= e!267413 e!267411)))

(declare-fun res!273683 () Bool)

(assert (=> b!458002 (=> (not res!273683) (not e!267411))))

(declare-datatypes ((array!28417 0))(
  ( (array!28418 (arr!13648 (Array (_ BitVec 32) (_ BitVec 64))) (size!14000 (_ BitVec 32))) )
))
(declare-fun lt!207220 () array!28417)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28417 (_ BitVec 32)) Bool)

(assert (=> b!458002 (= res!273683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207220 mask!1025))))

(declare-fun _keys!709 () array!28417)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!458002 (= lt!207220 (array!28418 (store (arr!13648 _keys!709) i!563 k!794) (size!14000 _keys!709)))))

(declare-fun b!458003 () Bool)

(declare-fun res!273688 () Bool)

(assert (=> b!458003 (=> (not res!273688) (not e!267413))))

(assert (=> b!458003 (= res!273688 (or (= (select (arr!13648 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13648 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458004 () Bool)

(declare-fun res!273685 () Bool)

(assert (=> b!458004 (=> (not res!273685) (not e!267413))))

(assert (=> b!458004 (= res!273685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!458005 () Bool)

(declare-fun e!267414 () Bool)

(declare-fun tp_is_empty!12325 () Bool)

(assert (=> b!458005 (= e!267414 tp_is_empty!12325)))

(declare-fun b!458006 () Bool)

(declare-fun e!267409 () Bool)

(assert (=> b!458006 (= e!267411 e!267409)))

(declare-fun res!273680 () Bool)

(assert (=> b!458006 (=> (not res!273680) (not e!267409))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!458006 (= res!273680 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!17539 0))(
  ( (V!17540 (val!6207 Int)) )
))
(declare-fun minValue!515 () V!17539)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5819 0))(
  ( (ValueCellFull!5819 (v!8473 V!17539)) (EmptyCell!5819) )
))
(declare-datatypes ((array!28419 0))(
  ( (array!28420 (arr!13649 (Array (_ BitVec 32) ValueCell!5819)) (size!14001 (_ BitVec 32))) )
))
(declare-fun lt!207223 () array!28419)

(declare-fun zeroValue!515 () V!17539)

(declare-datatypes ((tuple2!8146 0))(
  ( (tuple2!8147 (_1!4083 (_ BitVec 64)) (_2!4083 V!17539)) )
))
(declare-datatypes ((List!8249 0))(
  ( (Nil!8246) (Cons!8245 (h!9101 tuple2!8146) (t!14123 List!8249)) )
))
(declare-datatypes ((ListLongMap!7073 0))(
  ( (ListLongMap!7074 (toList!3552 List!8249)) )
))
(declare-fun lt!207219 () ListLongMap!7073)

(declare-fun getCurrentListMapNoExtraKeys!1724 (array!28417 array!28419 (_ BitVec 32) (_ BitVec 32) V!17539 V!17539 (_ BitVec 32) Int) ListLongMap!7073)

(assert (=> b!458006 (= lt!207219 (getCurrentListMapNoExtraKeys!1724 lt!207220 lt!207223 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!28419)

(declare-fun v!412 () V!17539)

(assert (=> b!458006 (= lt!207223 (array!28420 (store (arr!13649 _values!549) i!563 (ValueCellFull!5819 v!412)) (size!14001 _values!549)))))

(declare-fun lt!207226 () ListLongMap!7073)

(assert (=> b!458006 (= lt!207226 (getCurrentListMapNoExtraKeys!1724 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!458007 () Bool)

(declare-fun res!273681 () Bool)

(assert (=> b!458007 (=> (not res!273681) (not e!267413))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!458007 (= res!273681 (validKeyInArray!0 k!794))))

(declare-fun b!458008 () Bool)

(declare-fun res!273689 () Bool)

(assert (=> b!458008 (=> (not res!273689) (not e!267413))))

(assert (=> b!458008 (= res!273689 (and (= (size!14001 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14000 _keys!709) (size!14001 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!458009 () Bool)

(declare-fun res!273690 () Bool)

(assert (=> b!458009 (=> (not res!273690) (not e!267413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!458009 (= res!273690 (validMask!0 mask!1025))))

(declare-fun b!458010 () Bool)

(declare-fun res!273693 () Bool)

(assert (=> b!458010 (=> (not res!273693) (not e!267413))))

(declare-datatypes ((List!8250 0))(
  ( (Nil!8247) (Cons!8246 (h!9102 (_ BitVec 64)) (t!14124 List!8250)) )
))
(declare-fun arrayNoDuplicates!0 (array!28417 (_ BitVec 32) List!8250) Bool)

(assert (=> b!458010 (= res!273693 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8247))))

(declare-fun mapIsEmpty!20131 () Bool)

(declare-fun mapRes!20131 () Bool)

(assert (=> mapIsEmpty!20131 mapRes!20131))

(declare-fun mapNonEmpty!20131 () Bool)

(declare-fun tp!38791 () Bool)

(assert (=> mapNonEmpty!20131 (= mapRes!20131 (and tp!38791 e!267414))))

(declare-fun mapKey!20131 () (_ BitVec 32))

(declare-fun mapValue!20131 () ValueCell!5819)

(declare-fun mapRest!20131 () (Array (_ BitVec 32) ValueCell!5819))

(assert (=> mapNonEmpty!20131 (= (arr!13649 _values!549) (store mapRest!20131 mapKey!20131 mapValue!20131))))

(declare-fun b!458011 () Bool)

(declare-fun res!273687 () Bool)

(assert (=> b!458011 (=> (not res!273687) (not e!267413))))

(declare-fun arrayContainsKey!0 (array!28417 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!458011 (= res!273687 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!458012 () Bool)

(declare-fun e!267410 () Bool)

(assert (=> b!458012 (= e!267410 (or (not (= (select (arr!13648 _keys!709) from!863) k!794)) (bvsge from!863 (size!14000 _keys!709)) (bvslt (size!14000 _keys!709) #b01111111111111111111111111111111)))))

(declare-fun lt!207222 () ListLongMap!7073)

(declare-fun +!1572 (ListLongMap!7073 tuple2!8146) ListLongMap!7073)

(declare-fun get!6735 (ValueCell!5819 V!17539) V!17539)

(declare-fun dynLambda!883 (Int (_ BitVec 64)) V!17539)

(assert (=> b!458012 (= lt!207219 (+!1572 lt!207222 (tuple2!8147 (select (arr!13648 _keys!709) from!863) (get!6735 (select (arr!13649 _values!549) from!863) (dynLambda!883 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun res!273692 () Bool)

(assert (=> start!41082 (=> (not res!273692) (not e!267413))))

(assert (=> start!41082 (= res!273692 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14000 _keys!709))))))

(assert (=> start!41082 e!267413))

(assert (=> start!41082 tp_is_empty!12325))

(assert (=> start!41082 tp!38790))

(assert (=> start!41082 true))

(declare-fun e!267415 () Bool)

(declare-fun array_inv!9872 (array!28419) Bool)

(assert (=> start!41082 (and (array_inv!9872 _values!549) e!267415)))

(declare-fun array_inv!9873 (array!28417) Bool)

(assert (=> start!41082 (array_inv!9873 _keys!709)))

(declare-fun b!458013 () Bool)

(declare-fun res!273682 () Bool)

(assert (=> b!458013 (=> (not res!273682) (not e!267411))))

(assert (=> b!458013 (= res!273682 (bvsle from!863 i!563))))

(declare-fun b!458014 () Bool)

(declare-fun res!273686 () Bool)

(assert (=> b!458014 (=> (not res!273686) (not e!267413))))

(assert (=> b!458014 (= res!273686 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14000 _keys!709))))))

(declare-fun b!458015 () Bool)

(declare-fun res!273691 () Bool)

(assert (=> b!458015 (=> (not res!273691) (not e!267411))))

(assert (=> b!458015 (= res!273691 (arrayNoDuplicates!0 lt!207220 #b00000000000000000000000000000000 Nil!8247))))

(declare-fun b!458016 () Bool)

(declare-fun e!267408 () Bool)

(assert (=> b!458016 (= e!267408 tp_is_empty!12325)))

(declare-fun b!458017 () Bool)

(assert (=> b!458017 (= e!267415 (and e!267408 mapRes!20131))))

(declare-fun condMapEmpty!20131 () Bool)

(declare-fun mapDefault!20131 () ValueCell!5819)

