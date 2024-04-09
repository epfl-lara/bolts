; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38512 () Bool)

(assert start!38512)

(declare-fun b!397529 () Bool)

(declare-fun res!228384 () Bool)

(declare-fun e!240382 () Bool)

(assert (=> b!397529 (=> (not res!228384) (not e!240382))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397529 (= res!228384 (validMask!0 mask!1025))))

(declare-fun b!397530 () Bool)

(declare-fun e!240384 () Bool)

(declare-fun tp_is_empty!9923 () Bool)

(assert (=> b!397530 (= e!240384 tp_is_empty!9923)))

(declare-fun b!397531 () Bool)

(declare-fun e!240381 () Bool)

(assert (=> b!397531 (= e!240381 tp_is_empty!9923)))

(declare-fun b!397532 () Bool)

(declare-fun res!228380 () Bool)

(assert (=> b!397532 (=> (not res!228380) (not e!240382))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397532 (= res!228380 (validKeyInArray!0 k!794))))

(declare-fun b!397533 () Bool)

(declare-fun e!240380 () Bool)

(assert (=> b!397533 (= e!240382 e!240380)))

(declare-fun res!228375 () Bool)

(assert (=> b!397533 (=> (not res!228375) (not e!240380))))

(declare-datatypes ((array!23729 0))(
  ( (array!23730 (arr!11311 (Array (_ BitVec 32) (_ BitVec 64))) (size!11663 (_ BitVec 32))) )
))
(declare-fun lt!187311 () array!23729)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23729 (_ BitVec 32)) Bool)

(assert (=> b!397533 (= res!228375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187311 mask!1025))))

(declare-fun _keys!709 () array!23729)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397533 (= lt!187311 (array!23730 (store (arr!11311 _keys!709) i!563 k!794) (size!11663 _keys!709)))))

(declare-fun b!397534 () Bool)

(declare-fun e!240385 () Bool)

(declare-fun mapRes!16506 () Bool)

(assert (=> b!397534 (= e!240385 (and e!240381 mapRes!16506))))

(declare-fun condMapEmpty!16506 () Bool)

(declare-datatypes ((V!14335 0))(
  ( (V!14336 (val!5006 Int)) )
))
(declare-datatypes ((ValueCell!4618 0))(
  ( (ValueCellFull!4618 (v!7249 V!14335)) (EmptyCell!4618) )
))
(declare-datatypes ((array!23731 0))(
  ( (array!23732 (arr!11312 (Array (_ BitVec 32) ValueCell!4618)) (size!11664 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23731)

(declare-fun mapDefault!16506 () ValueCell!4618)

