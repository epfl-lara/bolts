; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38500 () Bool)

(assert start!38500)

(declare-fun b!397295 () Bool)

(declare-fun res!228200 () Bool)

(declare-fun e!240272 () Bool)

(assert (=> b!397295 (=> (not res!228200) (not e!240272))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!23705 0))(
  ( (array!23706 (arr!11299 (Array (_ BitVec 32) (_ BitVec 64))) (size!11651 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23705)

(assert (=> b!397295 (= res!228200 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11651 _keys!709))))))

(declare-fun mapNonEmpty!16488 () Bool)

(declare-fun mapRes!16488 () Bool)

(declare-fun tp!32283 () Bool)

(declare-fun e!240277 () Bool)

(assert (=> mapNonEmpty!16488 (= mapRes!16488 (and tp!32283 e!240277))))

(declare-datatypes ((V!14319 0))(
  ( (V!14320 (val!5000 Int)) )
))
(declare-datatypes ((ValueCell!4612 0))(
  ( (ValueCellFull!4612 (v!7243 V!14319)) (EmptyCell!4612) )
))
(declare-fun mapValue!16488 () ValueCell!4612)

(declare-datatypes ((array!23707 0))(
  ( (array!23708 (arr!11300 (Array (_ BitVec 32) ValueCell!4612)) (size!11652 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23707)

(declare-fun mapKey!16488 () (_ BitVec 32))

(declare-fun mapRest!16488 () (Array (_ BitVec 32) ValueCell!4612))

(assert (=> mapNonEmpty!16488 (= (arr!11300 _values!549) (store mapRest!16488 mapKey!16488 mapValue!16488))))

(declare-fun b!397296 () Bool)

(declare-fun e!240273 () Bool)

(declare-fun tp_is_empty!9911 () Bool)

(assert (=> b!397296 (= e!240273 tp_is_empty!9911)))

(declare-fun b!397297 () Bool)

(declare-fun res!228195 () Bool)

(assert (=> b!397297 (=> (not res!228195) (not e!240272))))

(declare-datatypes ((List!6512 0))(
  ( (Nil!6509) (Cons!6508 (h!7364 (_ BitVec 64)) (t!11694 List!6512)) )
))
(declare-fun arrayNoDuplicates!0 (array!23705 (_ BitVec 32) List!6512) Bool)

(assert (=> b!397297 (= res!228195 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6509))))

(declare-fun res!228203 () Bool)

(assert (=> start!38500 (=> (not res!228203) (not e!240272))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38500 (= res!228203 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11651 _keys!709))))))

(assert (=> start!38500 e!240272))

(assert (=> start!38500 true))

(declare-fun e!240274 () Bool)

(declare-fun array_inv!8272 (array!23707) Bool)

(assert (=> start!38500 (and (array_inv!8272 _values!549) e!240274)))

(declare-fun array_inv!8273 (array!23705) Bool)

(assert (=> start!38500 (array_inv!8273 _keys!709)))

(declare-fun b!397298 () Bool)

(declare-fun e!240276 () Bool)

(assert (=> b!397298 (= e!240276 false)))

(declare-fun lt!187274 () Bool)

(declare-fun lt!187275 () array!23705)

(assert (=> b!397298 (= lt!187274 (arrayNoDuplicates!0 lt!187275 #b00000000000000000000000000000000 Nil!6509))))

(declare-fun b!397299 () Bool)

(assert (=> b!397299 (= e!240274 (and e!240273 mapRes!16488))))

(declare-fun condMapEmpty!16488 () Bool)

(declare-fun mapDefault!16488 () ValueCell!4612)

