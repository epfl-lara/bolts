; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39132 () Bool)

(assert start!39132)

(declare-fun b_free!9391 () Bool)

(declare-fun b_next!9391 () Bool)

(assert (=> start!39132 (= b_free!9391 (not b_next!9391))))

(declare-fun tp!33702 () Bool)

(declare-fun b_and!16795 () Bool)

(assert (=> start!39132 (= tp!33702 b_and!16795)))

(declare-fun b!411207 () Bool)

(declare-fun res!238617 () Bool)

(declare-fun e!246289 () Bool)

(assert (=> b!411207 (=> (not res!238617) (not e!246289))))

(declare-datatypes ((array!24933 0))(
  ( (array!24934 (arr!11913 (Array (_ BitVec 32) (_ BitVec 64))) (size!12265 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24933)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!411207 (= res!238617 (or (= (select (arr!11913 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11913 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!411208 () Bool)

(declare-fun res!238622 () Bool)

(assert (=> b!411208 (=> (not res!238622) (not e!246289))))

(declare-datatypes ((List!6885 0))(
  ( (Nil!6882) (Cons!6881 (h!7737 (_ BitVec 64)) (t!12067 List!6885)) )
))
(declare-fun arrayNoDuplicates!0 (array!24933 (_ BitVec 32) List!6885) Bool)

(assert (=> b!411208 (= res!238622 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6882))))

(declare-fun mapNonEmpty!17436 () Bool)

(declare-fun mapRes!17436 () Bool)

(declare-fun tp!33701 () Bool)

(declare-fun e!246288 () Bool)

(assert (=> mapNonEmpty!17436 (= mapRes!17436 (and tp!33701 e!246288))))

(declare-datatypes ((V!15163 0))(
  ( (V!15164 (val!5316 Int)) )
))
(declare-datatypes ((ValueCell!4928 0))(
  ( (ValueCellFull!4928 (v!7559 V!15163)) (EmptyCell!4928) )
))
(declare-fun mapValue!17436 () ValueCell!4928)

(declare-datatypes ((array!24935 0))(
  ( (array!24936 (arr!11914 (Array (_ BitVec 32) ValueCell!4928)) (size!12266 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24935)

(declare-fun mapRest!17436 () (Array (_ BitVec 32) ValueCell!4928))

(declare-fun mapKey!17436 () (_ BitVec 32))

(assert (=> mapNonEmpty!17436 (= (arr!11914 _values!549) (store mapRest!17436 mapKey!17436 mapValue!17436))))

(declare-fun b!411209 () Bool)

(declare-fun res!238615 () Bool)

(assert (=> b!411209 (=> (not res!238615) (not e!246289))))

(assert (=> b!411209 (= res!238615 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12265 _keys!709))))))

(declare-fun mapIsEmpty!17436 () Bool)

(assert (=> mapIsEmpty!17436 mapRes!17436))

(declare-fun b!411210 () Bool)

(declare-fun e!246287 () Bool)

(assert (=> b!411210 (= e!246287 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!15163)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15163)

(declare-fun lt!189237 () array!24933)

(declare-fun v!412 () V!15163)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!6828 0))(
  ( (tuple2!6829 (_1!3424 (_ BitVec 64)) (_2!3424 V!15163)) )
))
(declare-datatypes ((List!6886 0))(
  ( (Nil!6883) (Cons!6882 (h!7738 tuple2!6828) (t!12068 List!6886)) )
))
(declare-datatypes ((ListLongMap!5755 0))(
  ( (ListLongMap!5756 (toList!2893 List!6886)) )
))
(declare-fun lt!189236 () ListLongMap!5755)

(declare-fun getCurrentListMapNoExtraKeys!1103 (array!24933 array!24935 (_ BitVec 32) (_ BitVec 32) V!15163 V!15163 (_ BitVec 32) Int) ListLongMap!5755)

(assert (=> b!411210 (= lt!189236 (getCurrentListMapNoExtraKeys!1103 lt!189237 (array!24936 (store (arr!11914 _values!549) i!563 (ValueCellFull!4928 v!412)) (size!12266 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189235 () ListLongMap!5755)

(assert (=> b!411210 (= lt!189235 (getCurrentListMapNoExtraKeys!1103 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!411211 () Bool)

(declare-fun e!246286 () Bool)

(declare-fun tp_is_empty!10543 () Bool)

(assert (=> b!411211 (= e!246286 tp_is_empty!10543)))

(declare-fun b!411212 () Bool)

(declare-fun res!238618 () Bool)

(assert (=> b!411212 (=> (not res!238618) (not e!246289))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24933 (_ BitVec 32)) Bool)

(assert (=> b!411212 (= res!238618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!411213 () Bool)

(assert (=> b!411213 (= e!246289 e!246287)))

(declare-fun res!238619 () Bool)

(assert (=> b!411213 (=> (not res!238619) (not e!246287))))

(assert (=> b!411213 (= res!238619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189237 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!411213 (= lt!189237 (array!24934 (store (arr!11913 _keys!709) i!563 k!794) (size!12265 _keys!709)))))

(declare-fun b!411214 () Bool)

(declare-fun res!238621 () Bool)

(assert (=> b!411214 (=> (not res!238621) (not e!246287))))

(assert (=> b!411214 (= res!238621 (arrayNoDuplicates!0 lt!189237 #b00000000000000000000000000000000 Nil!6882))))

(declare-fun res!238626 () Bool)

(assert (=> start!39132 (=> (not res!238626) (not e!246289))))

(assert (=> start!39132 (= res!238626 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12265 _keys!709))))))

(assert (=> start!39132 e!246289))

(assert (=> start!39132 tp_is_empty!10543))

(assert (=> start!39132 tp!33702))

(assert (=> start!39132 true))

(declare-fun e!246285 () Bool)

(declare-fun array_inv!8692 (array!24935) Bool)

(assert (=> start!39132 (and (array_inv!8692 _values!549) e!246285)))

(declare-fun array_inv!8693 (array!24933) Bool)

(assert (=> start!39132 (array_inv!8693 _keys!709)))

(declare-fun b!411215 () Bool)

(declare-fun res!238625 () Bool)

(assert (=> b!411215 (=> (not res!238625) (not e!246289))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!411215 (= res!238625 (validKeyInArray!0 k!794))))

(declare-fun b!411216 () Bool)

(declare-fun res!238616 () Bool)

(assert (=> b!411216 (=> (not res!238616) (not e!246289))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!411216 (= res!238616 (validMask!0 mask!1025))))

(declare-fun b!411217 () Bool)

(declare-fun res!238624 () Bool)

(assert (=> b!411217 (=> (not res!238624) (not e!246289))))

(assert (=> b!411217 (= res!238624 (and (= (size!12266 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12265 _keys!709) (size!12266 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!411218 () Bool)

(assert (=> b!411218 (= e!246288 tp_is_empty!10543)))

(declare-fun b!411219 () Bool)

(assert (=> b!411219 (= e!246285 (and e!246286 mapRes!17436))))

(declare-fun condMapEmpty!17436 () Bool)

(declare-fun mapDefault!17436 () ValueCell!4928)

