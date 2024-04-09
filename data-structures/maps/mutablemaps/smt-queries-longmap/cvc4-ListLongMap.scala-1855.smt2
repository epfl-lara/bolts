; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33522 () Bool)

(assert start!33522)

(declare-fun b_free!6803 () Bool)

(declare-fun b_next!6803 () Bool)

(assert (=> start!33522 (= b_free!6803 (not b_next!6803))))

(declare-fun tp!23904 () Bool)

(declare-fun b_and!13995 () Bool)

(assert (=> start!33522 (= tp!23904 b_and!13995)))

(declare-fun b!332371 () Bool)

(declare-fun e!204116 () Bool)

(declare-fun tp_is_empty!6755 () Bool)

(assert (=> b!332371 (= e!204116 tp_is_empty!6755)))

(declare-fun b!332372 () Bool)

(declare-fun res!183170 () Bool)

(declare-fun e!204113 () Bool)

(assert (=> b!332372 (=> (not res!183170) (not e!204113))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!332372 (= res!183170 (validKeyInArray!0 k!1348))))

(declare-fun b!332373 () Bool)

(declare-fun e!204114 () Bool)

(assert (=> b!332373 (= e!204114 tp_is_empty!6755)))

(declare-fun b!332374 () Bool)

(declare-fun res!183173 () Bool)

(assert (=> b!332374 (=> (not res!183173) (not e!204113))))

(declare-datatypes ((array!17103 0))(
  ( (array!17104 (arr!8082 (Array (_ BitVec 32) (_ BitVec 64))) (size!8434 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17103)

(declare-datatypes ((List!4618 0))(
  ( (Nil!4615) (Cons!4614 (h!5470 (_ BitVec 64)) (t!9708 List!4618)) )
))
(declare-fun arrayNoDuplicates!0 (array!17103 (_ BitVec 32) List!4618) Bool)

(assert (=> b!332374 (= res!183173 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4615))))

(declare-fun b!332375 () Bool)

(declare-fun res!183172 () Bool)

(assert (=> b!332375 (=> (not res!183172) (not e!204113))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!9983 0))(
  ( (V!9984 (val!3422 Int)) )
))
(declare-datatypes ((ValueCell!3034 0))(
  ( (ValueCellFull!3034 (v!5577 V!9983)) (EmptyCell!3034) )
))
(declare-datatypes ((array!17105 0))(
  ( (array!17106 (arr!8083 (Array (_ BitVec 32) ValueCell!3034)) (size!8435 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17105)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332375 (= res!183172 (and (= (size!8435 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8434 _keys!1895) (size!8435 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!183171 () Bool)

(assert (=> start!33522 (=> (not res!183171) (not e!204113))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33522 (= res!183171 (validMask!0 mask!2385))))

(assert (=> start!33522 e!204113))

(assert (=> start!33522 true))

(assert (=> start!33522 tp_is_empty!6755))

(assert (=> start!33522 tp!23904))

(declare-fun e!204115 () Bool)

(declare-fun array_inv!6012 (array!17105) Bool)

(assert (=> start!33522 (and (array_inv!6012 _values!1525) e!204115)))

(declare-fun array_inv!6013 (array!17103) Bool)

(assert (=> start!33522 (array_inv!6013 _keys!1895)))

(declare-fun mapIsEmpty!11520 () Bool)

(declare-fun mapRes!11520 () Bool)

(assert (=> mapIsEmpty!11520 mapRes!11520))

(declare-fun mapNonEmpty!11520 () Bool)

(declare-fun tp!23903 () Bool)

(assert (=> mapNonEmpty!11520 (= mapRes!11520 (and tp!23903 e!204116))))

(declare-fun mapValue!11520 () ValueCell!3034)

(declare-fun mapRest!11520 () (Array (_ BitVec 32) ValueCell!3034))

(declare-fun mapKey!11520 () (_ BitVec 32))

(assert (=> mapNonEmpty!11520 (= (arr!8083 _values!1525) (store mapRest!11520 mapKey!11520 mapValue!11520))))

(declare-fun b!332376 () Bool)

(assert (=> b!332376 (= e!204115 (and e!204114 mapRes!11520))))

(declare-fun condMapEmpty!11520 () Bool)

(declare-fun mapDefault!11520 () ValueCell!3034)

