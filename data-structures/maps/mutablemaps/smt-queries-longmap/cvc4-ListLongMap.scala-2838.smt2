; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41004 () Bool)

(assert start!41004)

(declare-fun b_free!10931 () Bool)

(declare-fun b_next!10931 () Bool)

(assert (=> start!41004 (= b_free!10931 (not b_next!10931))))

(declare-fun tp!38619 () Bool)

(declare-fun b_and!19091 () Bool)

(assert (=> start!41004 (= tp!38619 b_and!19091)))

(declare-fun b!456394 () Bool)

(declare-fun res!272445 () Bool)

(declare-fun e!266647 () Bool)

(assert (=> b!456394 (=> (not res!272445) (not e!266647))))

(declare-datatypes ((array!28305 0))(
  ( (array!28306 (arr!13593 (Array (_ BitVec 32) (_ BitVec 64))) (size!13945 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28305)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456394 (= res!272445 (or (= (select (arr!13593 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13593 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!456395 () Bool)

(declare-fun res!272452 () Bool)

(assert (=> b!456395 (=> (not res!272452) (not e!266647))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!456395 (= res!272452 (validMask!0 mask!1025))))

(declare-fun b!456396 () Bool)

(declare-fun e!266643 () Bool)

(declare-fun tp_is_empty!12269 () Bool)

(assert (=> b!456396 (= e!266643 tp_is_empty!12269)))

(declare-fun b!456397 () Bool)

(declare-fun res!272444 () Bool)

(declare-fun e!266646 () Bool)

(assert (=> b!456397 (=> (not res!272444) (not e!266646))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!456397 (= res!272444 (bvsle from!863 i!563))))

(declare-fun b!456398 () Bool)

(declare-fun e!266642 () Bool)

(assert (=> b!456398 (= e!266646 e!266642)))

(declare-fun res!272449 () Bool)

(assert (=> b!456398 (=> (not res!272449) (not e!266642))))

(assert (=> b!456398 (= res!272449 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!17463 0))(
  ( (V!17464 (val!6179 Int)) )
))
(declare-datatypes ((ValueCell!5791 0))(
  ( (ValueCellFull!5791 (v!8441 V!17463)) (EmptyCell!5791) )
))
(declare-datatypes ((array!28307 0))(
  ( (array!28308 (arr!13594 (Array (_ BitVec 32) ValueCell!5791)) (size!13946 (_ BitVec 32))) )
))
(declare-fun lt!206560 () array!28307)

(declare-fun minValue!515 () V!17463)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!206561 () array!28305)

(declare-fun zeroValue!515 () V!17463)

(declare-datatypes ((tuple2!8098 0))(
  ( (tuple2!8099 (_1!4059 (_ BitVec 64)) (_2!4059 V!17463)) )
))
(declare-datatypes ((List!8205 0))(
  ( (Nil!8202) (Cons!8201 (h!9057 tuple2!8098) (t!14041 List!8205)) )
))
(declare-datatypes ((ListLongMap!7025 0))(
  ( (ListLongMap!7026 (toList!3528 List!8205)) )
))
(declare-fun lt!206562 () ListLongMap!7025)

(declare-fun getCurrentListMapNoExtraKeys!1704 (array!28305 array!28307 (_ BitVec 32) (_ BitVec 32) V!17463 V!17463 (_ BitVec 32) Int) ListLongMap!7025)

(assert (=> b!456398 (= lt!206562 (getCurrentListMapNoExtraKeys!1704 lt!206561 lt!206560 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!28307)

(declare-fun v!412 () V!17463)

(assert (=> b!456398 (= lt!206560 (array!28308 (store (arr!13594 _values!549) i!563 (ValueCellFull!5791 v!412)) (size!13946 _values!549)))))

(declare-fun lt!206558 () ListLongMap!7025)

(assert (=> b!456398 (= lt!206558 (getCurrentListMapNoExtraKeys!1704 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!456399 () Bool)

(declare-fun res!272451 () Bool)

(assert (=> b!456399 (=> (not res!272451) (not e!266647))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28305 (_ BitVec 32)) Bool)

(assert (=> b!456399 (= res!272451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!272446 () Bool)

(assert (=> start!41004 (=> (not res!272446) (not e!266647))))

(assert (=> start!41004 (= res!272446 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13945 _keys!709))))))

(assert (=> start!41004 e!266647))

(assert (=> start!41004 tp_is_empty!12269))

(assert (=> start!41004 tp!38619))

(assert (=> start!41004 true))

(declare-fun e!266645 () Bool)

(declare-fun array_inv!9836 (array!28307) Bool)

(assert (=> start!41004 (and (array_inv!9836 _values!549) e!266645)))

(declare-fun array_inv!9837 (array!28305) Bool)

(assert (=> start!41004 (array_inv!9837 _keys!709)))

(declare-fun mapNonEmpty!20044 () Bool)

(declare-fun mapRes!20044 () Bool)

(declare-fun tp!38620 () Bool)

(assert (=> mapNonEmpty!20044 (= mapRes!20044 (and tp!38620 e!266643))))

(declare-fun mapRest!20044 () (Array (_ BitVec 32) ValueCell!5791))

(declare-fun mapValue!20044 () ValueCell!5791)

(declare-fun mapKey!20044 () (_ BitVec 32))

(assert (=> mapNonEmpty!20044 (= (arr!13594 _values!549) (store mapRest!20044 mapKey!20044 mapValue!20044))))

(declare-fun b!456400 () Bool)

(declare-fun res!272454 () Bool)

(assert (=> b!456400 (=> (not res!272454) (not e!266646))))

(declare-datatypes ((List!8206 0))(
  ( (Nil!8203) (Cons!8202 (h!9058 (_ BitVec 64)) (t!14042 List!8206)) )
))
(declare-fun arrayNoDuplicates!0 (array!28305 (_ BitVec 32) List!8206) Bool)

(assert (=> b!456400 (= res!272454 (arrayNoDuplicates!0 lt!206561 #b00000000000000000000000000000000 Nil!8203))))

(declare-fun b!456401 () Bool)

(declare-fun res!272453 () Bool)

(assert (=> b!456401 (=> (not res!272453) (not e!266647))))

(assert (=> b!456401 (= res!272453 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13945 _keys!709))))))

(declare-fun b!456402 () Bool)

(declare-fun e!266648 () Bool)

(assert (=> b!456402 (= e!266645 (and e!266648 mapRes!20044))))

(declare-fun condMapEmpty!20044 () Bool)

(declare-fun mapDefault!20044 () ValueCell!5791)

