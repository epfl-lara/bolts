; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38658 () Bool)

(assert start!38658)

(declare-fun b_free!9187 () Bool)

(declare-fun b_next!9187 () Bool)

(assert (=> start!38658 (= b_free!9187 (not b_next!9187))))

(declare-fun tp!32684 () Bool)

(declare-fun b_and!16591 () Bool)

(assert (=> start!38658 (= tp!32684 b_and!16591)))

(declare-fun b!401032 () Bool)

(declare-fun res!230901 () Bool)

(declare-fun e!241859 () Bool)

(assert (=> b!401032 (=> (not res!230901) (not e!241859))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!401032 (= res!230901 (validKeyInArray!0 k!794))))

(declare-fun b!401033 () Bool)

(declare-fun res!230903 () Bool)

(assert (=> b!401033 (=> (not res!230903) (not e!241859))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24013 0))(
  ( (array!24014 (arr!11453 (Array (_ BitVec 32) (_ BitVec 64))) (size!11805 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24013)

(assert (=> b!401033 (= res!230903 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11805 _keys!709))))))

(declare-fun b!401034 () Bool)

(declare-fun res!230895 () Bool)

(declare-fun e!241863 () Bool)

(assert (=> b!401034 (=> (not res!230895) (not e!241863))))

(declare-fun lt!187749 () array!24013)

(declare-datatypes ((List!6624 0))(
  ( (Nil!6621) (Cons!6620 (h!7476 (_ BitVec 64)) (t!11806 List!6624)) )
))
(declare-fun arrayNoDuplicates!0 (array!24013 (_ BitVec 32) List!6624) Bool)

(assert (=> b!401034 (= res!230895 (arrayNoDuplicates!0 lt!187749 #b00000000000000000000000000000000 Nil!6621))))

(declare-fun b!401035 () Bool)

(assert (=> b!401035 (= e!241859 e!241863)))

(declare-fun res!230904 () Bool)

(assert (=> b!401035 (=> (not res!230904) (not e!241863))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24013 (_ BitVec 32)) Bool)

(assert (=> b!401035 (= res!230904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187749 mask!1025))))

(assert (=> b!401035 (= lt!187749 (array!24014 (store (arr!11453 _keys!709) i!563 k!794) (size!11805 _keys!709)))))

(declare-fun b!401036 () Bool)

(declare-fun res!230898 () Bool)

(assert (=> b!401036 (=> (not res!230898) (not e!241859))))

(declare-fun arrayContainsKey!0 (array!24013 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!401036 (= res!230898 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!401037 () Bool)

(declare-fun res!230897 () Bool)

(assert (=> b!401037 (=> (not res!230897) (not e!241859))))

(assert (=> b!401037 (= res!230897 (or (= (select (arr!11453 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11453 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!401038 () Bool)

(declare-fun e!241858 () Bool)

(declare-fun e!241864 () Bool)

(declare-fun mapRes!16725 () Bool)

(assert (=> b!401038 (= e!241858 (and e!241864 mapRes!16725))))

(declare-fun condMapEmpty!16725 () Bool)

(declare-datatypes ((V!14531 0))(
  ( (V!14532 (val!5079 Int)) )
))
(declare-datatypes ((ValueCell!4691 0))(
  ( (ValueCellFull!4691 (v!7322 V!14531)) (EmptyCell!4691) )
))
(declare-datatypes ((array!24015 0))(
  ( (array!24016 (arr!11454 (Array (_ BitVec 32) ValueCell!4691)) (size!11806 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24015)

(declare-fun mapDefault!16725 () ValueCell!4691)

