; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38994 () Bool)

(assert start!38994)

(declare-fun b!408224 () Bool)

(declare-fun res!236260 () Bool)

(declare-fun e!245046 () Bool)

(assert (=> b!408224 (=> (not res!236260) (not e!245046))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408224 (= res!236260 (validKeyInArray!0 k!794))))

(declare-fun b!408225 () Bool)

(declare-fun e!245044 () Bool)

(assert (=> b!408225 (= e!245046 e!245044)))

(declare-fun res!236254 () Bool)

(assert (=> b!408225 (=> (not res!236254) (not e!245044))))

(declare-datatypes ((array!24665 0))(
  ( (array!24666 (arr!11779 (Array (_ BitVec 32) (_ BitVec 64))) (size!12131 (_ BitVec 32))) )
))
(declare-fun lt!188756 () array!24665)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24665 (_ BitVec 32)) Bool)

(assert (=> b!408225 (= res!236254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188756 mask!1025))))

(declare-fun _keys!709 () array!24665)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408225 (= lt!188756 (array!24666 (store (arr!11779 _keys!709) i!563 k!794) (size!12131 _keys!709)))))

(declare-fun b!408226 () Bool)

(declare-fun res!236259 () Bool)

(assert (=> b!408226 (=> (not res!236259) (not e!245046))))

(declare-datatypes ((List!6806 0))(
  ( (Nil!6803) (Cons!6802 (h!7658 (_ BitVec 64)) (t!11988 List!6806)) )
))
(declare-fun arrayNoDuplicates!0 (array!24665 (_ BitVec 32) List!6806) Bool)

(assert (=> b!408226 (= res!236259 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6803))))

(declare-fun b!408227 () Bool)

(declare-fun e!245045 () Bool)

(declare-fun tp_is_empty!10405 () Bool)

(assert (=> b!408227 (= e!245045 tp_is_empty!10405)))

(declare-fun b!408228 () Bool)

(declare-fun res!236257 () Bool)

(assert (=> b!408228 (=> (not res!236257) (not e!245046))))

(assert (=> b!408228 (= res!236257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!408229 () Bool)

(assert (=> b!408229 (= e!245044 false)))

(declare-fun lt!188757 () Bool)

(assert (=> b!408229 (= lt!188757 (arrayNoDuplicates!0 lt!188756 #b00000000000000000000000000000000 Nil!6803))))

(declare-fun b!408230 () Bool)

(declare-fun e!245043 () Bool)

(declare-fun e!245047 () Bool)

(declare-fun mapRes!17229 () Bool)

(assert (=> b!408230 (= e!245043 (and e!245047 mapRes!17229))))

(declare-fun condMapEmpty!17229 () Bool)

(declare-datatypes ((V!14979 0))(
  ( (V!14980 (val!5247 Int)) )
))
(declare-datatypes ((ValueCell!4859 0))(
  ( (ValueCellFull!4859 (v!7490 V!14979)) (EmptyCell!4859) )
))
(declare-datatypes ((array!24667 0))(
  ( (array!24668 (arr!11780 (Array (_ BitVec 32) ValueCell!4859)) (size!12132 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24667)

(declare-fun mapDefault!17229 () ValueCell!4859)

