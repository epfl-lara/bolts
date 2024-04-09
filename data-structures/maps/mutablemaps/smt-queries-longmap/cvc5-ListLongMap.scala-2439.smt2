; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38460 () Bool)

(assert start!38460)

(declare-fun b!396515 () Bool)

(declare-fun res!227596 () Bool)

(declare-fun e!239912 () Bool)

(assert (=> b!396515 (=> (not res!227596) (not e!239912))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396515 (= res!227596 (validMask!0 mask!1025))))

(declare-fun b!396516 () Bool)

(declare-fun res!227597 () Bool)

(assert (=> b!396516 (=> (not res!227597) (not e!239912))))

(declare-datatypes ((array!23629 0))(
  ( (array!23630 (arr!11261 (Array (_ BitVec 32) (_ BitVec 64))) (size!11613 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23629)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396516 (= res!227597 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!396517 () Bool)

(declare-fun e!239913 () Bool)

(assert (=> b!396517 (= e!239913 false)))

(declare-fun lt!187154 () Bool)

(declare-fun lt!187155 () array!23629)

(declare-datatypes ((List!6497 0))(
  ( (Nil!6494) (Cons!6493 (h!7349 (_ BitVec 64)) (t!11679 List!6497)) )
))
(declare-fun arrayNoDuplicates!0 (array!23629 (_ BitVec 32) List!6497) Bool)

(assert (=> b!396517 (= lt!187154 (arrayNoDuplicates!0 lt!187155 #b00000000000000000000000000000000 Nil!6494))))

(declare-fun b!396518 () Bool)

(declare-fun e!239915 () Bool)

(declare-fun tp_is_empty!9871 () Bool)

(assert (=> b!396518 (= e!239915 tp_is_empty!9871)))

(declare-fun b!396519 () Bool)

(declare-fun res!227595 () Bool)

(assert (=> b!396519 (=> (not res!227595) (not e!239912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396519 (= res!227595 (validKeyInArray!0 k!794))))

(declare-fun b!396520 () Bool)

(declare-fun res!227604 () Bool)

(assert (=> b!396520 (=> (not res!227604) (not e!239912))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14267 0))(
  ( (V!14268 (val!4980 Int)) )
))
(declare-datatypes ((ValueCell!4592 0))(
  ( (ValueCellFull!4592 (v!7223 V!14267)) (EmptyCell!4592) )
))
(declare-datatypes ((array!23631 0))(
  ( (array!23632 (arr!11262 (Array (_ BitVec 32) ValueCell!4592)) (size!11614 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23631)

(assert (=> b!396520 (= res!227604 (and (= (size!11614 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11613 _keys!709) (size!11614 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!16428 () Bool)

(declare-fun mapRes!16428 () Bool)

(assert (=> mapIsEmpty!16428 mapRes!16428))

(declare-fun b!396521 () Bool)

(declare-fun res!227600 () Bool)

(assert (=> b!396521 (=> (not res!227600) (not e!239912))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!396521 (= res!227600 (or (= (select (arr!11261 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11261 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!396522 () Bool)

(declare-fun e!239914 () Bool)

(assert (=> b!396522 (= e!239914 tp_is_empty!9871)))

(declare-fun b!396523 () Bool)

(assert (=> b!396523 (= e!239912 e!239913)))

(declare-fun res!227599 () Bool)

(assert (=> b!396523 (=> (not res!227599) (not e!239913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23629 (_ BitVec 32)) Bool)

(assert (=> b!396523 (= res!227599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187155 mask!1025))))

(assert (=> b!396523 (= lt!187155 (array!23630 (store (arr!11261 _keys!709) i!563 k!794) (size!11613 _keys!709)))))

(declare-fun b!396524 () Bool)

(declare-fun res!227598 () Bool)

(assert (=> b!396524 (=> (not res!227598) (not e!239912))))

(assert (=> b!396524 (= res!227598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!16428 () Bool)

(declare-fun tp!32223 () Bool)

(assert (=> mapNonEmpty!16428 (= mapRes!16428 (and tp!32223 e!239914))))

(declare-fun mapKey!16428 () (_ BitVec 32))

(declare-fun mapRest!16428 () (Array (_ BitVec 32) ValueCell!4592))

(declare-fun mapValue!16428 () ValueCell!4592)

(assert (=> mapNonEmpty!16428 (= (arr!11262 _values!549) (store mapRest!16428 mapKey!16428 mapValue!16428))))

(declare-fun res!227603 () Bool)

(assert (=> start!38460 (=> (not res!227603) (not e!239912))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38460 (= res!227603 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11613 _keys!709))))))

(assert (=> start!38460 e!239912))

(assert (=> start!38460 true))

(declare-fun e!239916 () Bool)

(declare-fun array_inv!8246 (array!23631) Bool)

(assert (=> start!38460 (and (array_inv!8246 _values!549) e!239916)))

(declare-fun array_inv!8247 (array!23629) Bool)

(assert (=> start!38460 (array_inv!8247 _keys!709)))

(declare-fun b!396525 () Bool)

(declare-fun res!227602 () Bool)

(assert (=> b!396525 (=> (not res!227602) (not e!239912))))

(assert (=> b!396525 (= res!227602 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6494))))

(declare-fun b!396526 () Bool)

(declare-fun res!227601 () Bool)

(assert (=> b!396526 (=> (not res!227601) (not e!239912))))

(assert (=> b!396526 (= res!227601 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11613 _keys!709))))))

(declare-fun b!396527 () Bool)

(assert (=> b!396527 (= e!239916 (and e!239915 mapRes!16428))))

(declare-fun condMapEmpty!16428 () Bool)

(declare-fun mapDefault!16428 () ValueCell!4592)

