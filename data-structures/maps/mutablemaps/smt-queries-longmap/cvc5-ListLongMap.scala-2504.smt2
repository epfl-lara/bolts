; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38850 () Bool)

(assert start!38850)

(declare-fun b!405416 () Bool)

(declare-fun e!243749 () Bool)

(declare-fun tp_is_empty!10261 () Bool)

(assert (=> b!405416 (= e!243749 tp_is_empty!10261)))

(declare-fun b!405417 () Bool)

(declare-fun res!234097 () Bool)

(declare-fun e!243746 () Bool)

(assert (=> b!405417 (=> (not res!234097) (not e!243746))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!405417 (= res!234097 (validMask!0 mask!1025))))

(declare-fun b!405418 () Bool)

(declare-fun res!234098 () Bool)

(assert (=> b!405418 (=> (not res!234098) (not e!243746))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!405418 (= res!234098 (validKeyInArray!0 k!794))))

(declare-fun b!405419 () Bool)

(declare-fun res!234099 () Bool)

(assert (=> b!405419 (=> (not res!234099) (not e!243746))))

(declare-datatypes ((array!24381 0))(
  ( (array!24382 (arr!11637 (Array (_ BitVec 32) (_ BitVec 64))) (size!11989 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24381)

(declare-fun arrayContainsKey!0 (array!24381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!405419 (= res!234099 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!234100 () Bool)

(assert (=> start!38850 (=> (not res!234100) (not e!243746))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38850 (= res!234100 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11989 _keys!709))))))

(assert (=> start!38850 e!243746))

(assert (=> start!38850 true))

(declare-datatypes ((V!14787 0))(
  ( (V!14788 (val!5175 Int)) )
))
(declare-datatypes ((ValueCell!4787 0))(
  ( (ValueCellFull!4787 (v!7418 V!14787)) (EmptyCell!4787) )
))
(declare-datatypes ((array!24383 0))(
  ( (array!24384 (arr!11638 (Array (_ BitVec 32) ValueCell!4787)) (size!11990 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24383)

(declare-fun e!243748 () Bool)

(declare-fun array_inv!8502 (array!24383) Bool)

(assert (=> start!38850 (and (array_inv!8502 _values!549) e!243748)))

(declare-fun array_inv!8503 (array!24381) Bool)

(assert (=> start!38850 (array_inv!8503 _keys!709)))

(declare-fun b!405420 () Bool)

(declare-fun res!234093 () Bool)

(assert (=> b!405420 (=> (not res!234093) (not e!243746))))

(declare-datatypes ((List!6744 0))(
  ( (Nil!6741) (Cons!6740 (h!7596 (_ BitVec 64)) (t!11926 List!6744)) )
))
(declare-fun arrayNoDuplicates!0 (array!24381 (_ BitVec 32) List!6744) Bool)

(assert (=> b!405420 (= res!234093 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6741))))

(declare-fun b!405421 () Bool)

(declare-fun e!243750 () Bool)

(assert (=> b!405421 (= e!243746 e!243750)))

(declare-fun res!234101 () Bool)

(assert (=> b!405421 (=> (not res!234101) (not e!243750))))

(declare-fun lt!188324 () array!24381)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24381 (_ BitVec 32)) Bool)

(assert (=> b!405421 (= res!234101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188324 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!405421 (= lt!188324 (array!24382 (store (arr!11637 _keys!709) i!563 k!794) (size!11989 _keys!709)))))

(declare-fun b!405422 () Bool)

(declare-fun res!234102 () Bool)

(assert (=> b!405422 (=> (not res!234102) (not e!243746))))

(assert (=> b!405422 (= res!234102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!405423 () Bool)

(declare-fun e!243747 () Bool)

(assert (=> b!405423 (= e!243747 tp_is_empty!10261)))

(declare-fun b!405424 () Bool)

(assert (=> b!405424 (= e!243750 false)))

(declare-fun lt!188325 () Bool)

(assert (=> b!405424 (= lt!188325 (arrayNoDuplicates!0 lt!188324 #b00000000000000000000000000000000 Nil!6741))))

(declare-fun b!405425 () Bool)

(declare-fun mapRes!17013 () Bool)

(assert (=> b!405425 (= e!243748 (and e!243749 mapRes!17013))))

(declare-fun condMapEmpty!17013 () Bool)

(declare-fun mapDefault!17013 () ValueCell!4787)

