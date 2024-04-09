; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35704 () Bool)

(assert start!35704)

(declare-fun b!358350 () Bool)

(declare-fun e!219383 () Bool)

(assert (=> b!358350 (= e!219383 false)))

(declare-fun lt!166171 () Bool)

(declare-datatypes ((array!19827 0))(
  ( (array!19828 (arr!9404 (Array (_ BitVec 32) (_ BitVec 64))) (size!9756 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19827)

(declare-datatypes ((List!5455 0))(
  ( (Nil!5452) (Cons!5451 (h!6307 (_ BitVec 64)) (t!10613 List!5455)) )
))
(declare-fun arrayNoDuplicates!0 (array!19827 (_ BitVec 32) List!5455) Bool)

(assert (=> b!358350 (= lt!166171 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5452))))

(declare-fun b!358351 () Bool)

(declare-fun res!199241 () Bool)

(assert (=> b!358351 (=> (not res!199241) (not e!219383))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19827 (_ BitVec 32)) Bool)

(assert (=> b!358351 (= res!199241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!358353 () Bool)

(declare-fun e!219386 () Bool)

(declare-fun e!219384 () Bool)

(declare-fun mapRes!13731 () Bool)

(assert (=> b!358353 (= e!219386 (and e!219384 mapRes!13731))))

(declare-fun condMapEmpty!13731 () Bool)

(declare-datatypes ((V!11843 0))(
  ( (V!11844 (val!4119 Int)) )
))
(declare-datatypes ((ValueCell!3731 0))(
  ( (ValueCellFull!3731 (v!6309 V!11843)) (EmptyCell!3731) )
))
(declare-datatypes ((array!19829 0))(
  ( (array!19830 (arr!9405 (Array (_ BitVec 32) ValueCell!3731)) (size!9757 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19829)

(declare-fun mapDefault!13731 () ValueCell!3731)

