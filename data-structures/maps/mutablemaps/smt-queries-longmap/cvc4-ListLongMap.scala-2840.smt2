; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41016 () Bool)

(assert start!41016)

(declare-fun b_free!10943 () Bool)

(declare-fun b_next!10943 () Bool)

(assert (=> start!41016 (= b_free!10943 (not b_next!10943))))

(declare-fun tp!38656 () Bool)

(declare-fun b_and!19103 () Bool)

(assert (=> start!41016 (= tp!38656 b_and!19103)))

(declare-fun b!456699 () Bool)

(declare-fun res!272696 () Bool)

(declare-fun e!266791 () Bool)

(assert (=> b!456699 (=> (not res!272696) (not e!266791))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!456699 (= res!272696 (validMask!0 mask!1025))))

(declare-fun b!456700 () Bool)

(declare-fun e!266786 () Bool)

(declare-fun tp_is_empty!12281 () Bool)

(assert (=> b!456700 (= e!266786 tp_is_empty!12281)))

(declare-fun b!456701 () Bool)

(declare-fun e!266785 () Bool)

(declare-fun e!266790 () Bool)

(assert (=> b!456701 (= e!266785 e!266790)))

(declare-fun res!272698 () Bool)

(assert (=> b!456701 (=> (not res!272698) (not e!266790))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456701 (= res!272698 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!17479 0))(
  ( (V!17480 (val!6185 Int)) )
))
(declare-fun minValue!515 () V!17479)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((array!28329 0))(
  ( (array!28330 (arr!13605 (Array (_ BitVec 32) (_ BitVec 64))) (size!13957 (_ BitVec 32))) )
))
(declare-fun lt!206649 () array!28329)

(declare-datatypes ((tuple2!8110 0))(
  ( (tuple2!8111 (_1!4065 (_ BitVec 64)) (_2!4065 V!17479)) )
))
(declare-datatypes ((List!8215 0))(
  ( (Nil!8212) (Cons!8211 (h!9067 tuple2!8110) (t!14051 List!8215)) )
))
(declare-datatypes ((ListLongMap!7037 0))(
  ( (ListLongMap!7038 (toList!3534 List!8215)) )
))
(declare-fun lt!206652 () ListLongMap!7037)

(declare-fun zeroValue!515 () V!17479)

(declare-datatypes ((ValueCell!5797 0))(
  ( (ValueCellFull!5797 (v!8447 V!17479)) (EmptyCell!5797) )
))
(declare-datatypes ((array!28331 0))(
  ( (array!28332 (arr!13606 (Array (_ BitVec 32) ValueCell!5797)) (size!13958 (_ BitVec 32))) )
))
(declare-fun lt!206651 () array!28331)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1710 (array!28329 array!28331 (_ BitVec 32) (_ BitVec 32) V!17479 V!17479 (_ BitVec 32) Int) ListLongMap!7037)

(assert (=> b!456701 (= lt!206652 (getCurrentListMapNoExtraKeys!1710 lt!206649 lt!206651 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!28331)

(declare-fun v!412 () V!17479)

(assert (=> b!456701 (= lt!206651 (array!28332 (store (arr!13606 _values!549) i!563 (ValueCellFull!5797 v!412)) (size!13958 _values!549)))))

(declare-fun lt!206650 () ListLongMap!7037)

(declare-fun _keys!709 () array!28329)

(assert (=> b!456701 (= lt!206650 (getCurrentListMapNoExtraKeys!1710 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!20062 () Bool)

(declare-fun mapRes!20062 () Bool)

(declare-fun tp!38655 () Bool)

(declare-fun e!266787 () Bool)

(assert (=> mapNonEmpty!20062 (= mapRes!20062 (and tp!38655 e!266787))))

(declare-fun mapValue!20062 () ValueCell!5797)

(declare-fun mapKey!20062 () (_ BitVec 32))

(declare-fun mapRest!20062 () (Array (_ BitVec 32) ValueCell!5797))

(assert (=> mapNonEmpty!20062 (= (arr!13606 _values!549) (store mapRest!20062 mapKey!20062 mapValue!20062))))

(declare-fun b!456703 () Bool)

(declare-fun res!272701 () Bool)

(assert (=> b!456703 (=> (not res!272701) (not e!266785))))

(assert (=> b!456703 (= res!272701 (bvsle from!863 i!563))))

(declare-fun b!456704 () Bool)

(declare-fun res!272700 () Bool)

(assert (=> b!456704 (=> (not res!272700) (not e!266791))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!456704 (= res!272700 (validKeyInArray!0 k!794))))

(declare-fun b!456705 () Bool)

(declare-fun e!266792 () Bool)

(assert (=> b!456705 (= e!266790 (not e!266792))))

(declare-fun res!272699 () Bool)

(assert (=> b!456705 (=> res!272699 e!266792)))

(assert (=> b!456705 (= res!272699 (not (validKeyInArray!0 (select (arr!13605 _keys!709) from!863))))))

(declare-fun +!1555 (ListLongMap!7037 tuple2!8110) ListLongMap!7037)

(assert (=> b!456705 (= (getCurrentListMapNoExtraKeys!1710 lt!206649 lt!206651 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1555 (getCurrentListMapNoExtraKeys!1710 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!8111 k!794 v!412)))))

(declare-datatypes ((Unit!13235 0))(
  ( (Unit!13236) )
))
(declare-fun lt!206648 () Unit!13235)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!720 (array!28329 array!28331 (_ BitVec 32) (_ BitVec 32) V!17479 V!17479 (_ BitVec 32) (_ BitVec 64) V!17479 (_ BitVec 32) Int) Unit!13235)

(assert (=> b!456705 (= lt!206648 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!720 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!456706 () Bool)

(declare-fun res!272697 () Bool)

(assert (=> b!456706 (=> (not res!272697) (not e!266791))))

(declare-fun arrayContainsKey!0 (array!28329 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!456706 (= res!272697 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!456707 () Bool)

(assert (=> b!456707 (= e!266791 e!266785)))

(declare-fun res!272706 () Bool)

(assert (=> b!456707 (=> (not res!272706) (not e!266785))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28329 (_ BitVec 32)) Bool)

(assert (=> b!456707 (= res!272706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206649 mask!1025))))

(assert (=> b!456707 (= lt!206649 (array!28330 (store (arr!13605 _keys!709) i!563 k!794) (size!13957 _keys!709)))))

(declare-fun b!456708 () Bool)

(declare-fun res!272695 () Bool)

(assert (=> b!456708 (=> (not res!272695) (not e!266791))))

(assert (=> b!456708 (= res!272695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!456709 () Bool)

(declare-fun e!266789 () Bool)

(assert (=> b!456709 (= e!266789 (and e!266786 mapRes!20062))))

(declare-fun condMapEmpty!20062 () Bool)

(declare-fun mapDefault!20062 () ValueCell!5797)

