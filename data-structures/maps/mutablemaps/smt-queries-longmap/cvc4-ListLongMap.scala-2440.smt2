; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38470 () Bool)

(assert start!38470)

(declare-fun b!396710 () Bool)

(declare-fun res!227754 () Bool)

(declare-fun e!240005 () Bool)

(assert (=> b!396710 (=> (not res!227754) (not e!240005))))

(declare-datatypes ((array!23647 0))(
  ( (array!23648 (arr!11270 (Array (_ BitVec 32) (_ BitVec 64))) (size!11622 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23647)

(declare-datatypes ((List!6501 0))(
  ( (Nil!6498) (Cons!6497 (h!7353 (_ BitVec 64)) (t!11683 List!6501)) )
))
(declare-fun arrayNoDuplicates!0 (array!23647 (_ BitVec 32) List!6501) Bool)

(assert (=> b!396710 (= res!227754 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6498))))

(declare-fun b!396711 () Bool)

(declare-fun res!227753 () Bool)

(assert (=> b!396711 (=> (not res!227753) (not e!240005))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!396711 (= res!227753 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11622 _keys!709))))))

(declare-fun b!396712 () Bool)

(declare-fun res!227751 () Bool)

(assert (=> b!396712 (=> (not res!227751) (not e!240005))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396712 (= res!227751 (validKeyInArray!0 k!794))))

(declare-fun mapIsEmpty!16443 () Bool)

(declare-fun mapRes!16443 () Bool)

(assert (=> mapIsEmpty!16443 mapRes!16443))

(declare-fun b!396713 () Bool)

(declare-fun res!227750 () Bool)

(assert (=> b!396713 (=> (not res!227750) (not e!240005))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23647 (_ BitVec 32)) Bool)

(assert (=> b!396713 (= res!227750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!396714 () Bool)

(declare-fun e!240007 () Bool)

(assert (=> b!396714 (= e!240007 false)))

(declare-fun lt!187185 () Bool)

(declare-fun lt!187184 () array!23647)

(assert (=> b!396714 (= lt!187185 (arrayNoDuplicates!0 lt!187184 #b00000000000000000000000000000000 Nil!6498))))

(declare-fun b!396715 () Bool)

(declare-fun res!227749 () Bool)

(assert (=> b!396715 (=> (not res!227749) (not e!240005))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14279 0))(
  ( (V!14280 (val!4985 Int)) )
))
(declare-datatypes ((ValueCell!4597 0))(
  ( (ValueCellFull!4597 (v!7228 V!14279)) (EmptyCell!4597) )
))
(declare-datatypes ((array!23649 0))(
  ( (array!23650 (arr!11271 (Array (_ BitVec 32) ValueCell!4597)) (size!11623 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23649)

(assert (=> b!396715 (= res!227749 (and (= (size!11623 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11622 _keys!709) (size!11623 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!396716 () Bool)

(declare-fun e!240006 () Bool)

(declare-fun e!240004 () Bool)

(assert (=> b!396716 (= e!240006 (and e!240004 mapRes!16443))))

(declare-fun condMapEmpty!16443 () Bool)

(declare-fun mapDefault!16443 () ValueCell!4597)

