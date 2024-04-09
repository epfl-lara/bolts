; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38778 () Bool)

(assert start!38778)

(declare-fun b!404012 () Bool)

(declare-fun res!233022 () Bool)

(declare-fun e!243098 () Bool)

(assert (=> b!404012 (=> (not res!233022) (not e!243098))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!404012 (= res!233022 (validMask!0 mask!1025))))

(declare-fun b!404013 () Bool)

(declare-fun res!233017 () Bool)

(assert (=> b!404013 (=> (not res!233017) (not e!243098))))

(declare-datatypes ((array!24245 0))(
  ( (array!24246 (arr!11569 (Array (_ BitVec 32) (_ BitVec 64))) (size!11921 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24245)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14691 0))(
  ( (V!14692 (val!5139 Int)) )
))
(declare-datatypes ((ValueCell!4751 0))(
  ( (ValueCellFull!4751 (v!7382 V!14691)) (EmptyCell!4751) )
))
(declare-datatypes ((array!24247 0))(
  ( (array!24248 (arr!11570 (Array (_ BitVec 32) ValueCell!4751)) (size!11922 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24247)

(assert (=> b!404013 (= res!233017 (and (= (size!11922 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11921 _keys!709) (size!11922 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!404014 () Bool)

(declare-fun res!233018 () Bool)

(assert (=> b!404014 (=> (not res!233018) (not e!243098))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!404014 (= res!233018 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11921 _keys!709))))))

(declare-fun b!404015 () Bool)

(declare-fun res!233021 () Bool)

(assert (=> b!404015 (=> (not res!233021) (not e!243098))))

(assert (=> b!404015 (= res!233021 (or (= (select (arr!11569 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11569 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!404016 () Bool)

(declare-fun e!243101 () Bool)

(assert (=> b!404016 (= e!243098 e!243101)))

(declare-fun res!233015 () Bool)

(assert (=> b!404016 (=> (not res!233015) (not e!243101))))

(declare-fun lt!188108 () array!24245)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24245 (_ BitVec 32)) Bool)

(assert (=> b!404016 (= res!233015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188108 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!404016 (= lt!188108 (array!24246 (store (arr!11569 _keys!709) i!563 k!794) (size!11921 _keys!709)))))

(declare-fun b!404017 () Bool)

(declare-fun e!243100 () Bool)

(declare-fun tp_is_empty!10189 () Bool)

(assert (=> b!404017 (= e!243100 tp_is_empty!10189)))

(declare-fun mapIsEmpty!16905 () Bool)

(declare-fun mapRes!16905 () Bool)

(assert (=> mapIsEmpty!16905 mapRes!16905))

(declare-fun b!404018 () Bool)

(declare-fun e!243103 () Bool)

(assert (=> b!404018 (= e!243103 tp_is_empty!10189)))

(declare-fun mapNonEmpty!16905 () Bool)

(declare-fun tp!33024 () Bool)

(assert (=> mapNonEmpty!16905 (= mapRes!16905 (and tp!33024 e!243103))))

(declare-fun mapValue!16905 () ValueCell!4751)

(declare-fun mapKey!16905 () (_ BitVec 32))

(declare-fun mapRest!16905 () (Array (_ BitVec 32) ValueCell!4751))

(assert (=> mapNonEmpty!16905 (= (arr!11570 _values!549) (store mapRest!16905 mapKey!16905 mapValue!16905))))

(declare-fun b!404020 () Bool)

(declare-fun res!233013 () Bool)

(assert (=> b!404020 (=> (not res!233013) (not e!243098))))

(assert (=> b!404020 (= res!233013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!404021 () Bool)

(declare-fun e!243102 () Bool)

(assert (=> b!404021 (= e!243102 (and e!243100 mapRes!16905))))

(declare-fun condMapEmpty!16905 () Bool)

(declare-fun mapDefault!16905 () ValueCell!4751)

