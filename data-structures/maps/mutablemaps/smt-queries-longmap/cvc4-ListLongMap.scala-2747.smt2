; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40332 () Bool)

(assert start!40332)

(declare-fun b!442683 () Bool)

(declare-fun res!262309 () Bool)

(declare-fun e!260535 () Bool)

(assert (=> b!442683 (=> (not res!262309) (not e!260535))))

(declare-datatypes ((array!27227 0))(
  ( (array!27228 (arr!13059 (Array (_ BitVec 32) (_ BitVec 64))) (size!13411 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27227)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16735 0))(
  ( (V!16736 (val!5906 Int)) )
))
(declare-datatypes ((ValueCell!5518 0))(
  ( (ValueCellFull!5518 (v!8153 V!16735)) (EmptyCell!5518) )
))
(declare-datatypes ((array!27229 0))(
  ( (array!27230 (arr!13060 (Array (_ BitVec 32) ValueCell!5518)) (size!13412 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27229)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!442683 (= res!262309 (and (= (size!13412 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13411 _keys!709) (size!13412 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!262306 () Bool)

(assert (=> start!40332 (=> (not res!262306) (not e!260535))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40332 (= res!262306 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13411 _keys!709))))))

(assert (=> start!40332 e!260535))

(assert (=> start!40332 true))

(declare-fun e!260532 () Bool)

(declare-fun array_inv!9466 (array!27229) Bool)

(assert (=> start!40332 (and (array_inv!9466 _values!549) e!260532)))

(declare-fun array_inv!9467 (array!27227) Bool)

(assert (=> start!40332 (array_inv!9467 _keys!709)))

(declare-fun b!442684 () Bool)

(declare-fun res!262302 () Bool)

(assert (=> b!442684 (=> (not res!262302) (not e!260535))))

(declare-datatypes ((List!7813 0))(
  ( (Nil!7810) (Cons!7809 (h!8665 (_ BitVec 64)) (t!13579 List!7813)) )
))
(declare-fun arrayNoDuplicates!0 (array!27227 (_ BitVec 32) List!7813) Bool)

(assert (=> b!442684 (= res!262302 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7810))))

(declare-fun mapNonEmpty!19209 () Bool)

(declare-fun mapRes!19209 () Bool)

(declare-fun tp!37191 () Bool)

(declare-fun e!260533 () Bool)

(assert (=> mapNonEmpty!19209 (= mapRes!19209 (and tp!37191 e!260533))))

(declare-fun mapValue!19209 () ValueCell!5518)

(declare-fun mapRest!19209 () (Array (_ BitVec 32) ValueCell!5518))

(declare-fun mapKey!19209 () (_ BitVec 32))

(assert (=> mapNonEmpty!19209 (= (arr!13060 _values!549) (store mapRest!19209 mapKey!19209 mapValue!19209))))

(declare-fun b!442685 () Bool)

(declare-fun res!262304 () Bool)

(assert (=> b!442685 (=> (not res!262304) (not e!260535))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27227 (_ BitVec 32)) Bool)

(assert (=> b!442685 (= res!262304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!442686 () Bool)

(declare-fun tp_is_empty!11723 () Bool)

(assert (=> b!442686 (= e!260533 tp_is_empty!11723)))

(declare-fun b!442687 () Bool)

(declare-fun res!262305 () Bool)

(assert (=> b!442687 (=> (not res!262305) (not e!260535))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!442687 (= res!262305 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!442688 () Bool)

(declare-fun res!262303 () Bool)

(assert (=> b!442688 (=> (not res!262303) (not e!260535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!442688 (= res!262303 (validKeyInArray!0 k!794))))

(declare-fun b!442689 () Bool)

(declare-fun e!260536 () Bool)

(assert (=> b!442689 (= e!260532 (and e!260536 mapRes!19209))))

(declare-fun condMapEmpty!19209 () Bool)

(declare-fun mapDefault!19209 () ValueCell!5518)

