; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38794 () Bool)

(assert start!38794)

(declare-fun b!404324 () Bool)

(declare-fun res!233255 () Bool)

(declare-fun e!243244 () Bool)

(assert (=> b!404324 (=> (not res!233255) (not e!243244))))

(declare-datatypes ((array!24275 0))(
  ( (array!24276 (arr!11584 (Array (_ BitVec 32) (_ BitVec 64))) (size!11936 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24275)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24275 (_ BitVec 32)) Bool)

(assert (=> b!404324 (= res!233255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!16929 () Bool)

(declare-fun mapRes!16929 () Bool)

(assert (=> mapIsEmpty!16929 mapRes!16929))

(declare-fun b!404325 () Bool)

(declare-fun e!243246 () Bool)

(declare-fun tp_is_empty!10205 () Bool)

(assert (=> b!404325 (= e!243246 tp_is_empty!10205)))

(declare-fun b!404326 () Bool)

(declare-fun res!233259 () Bool)

(assert (=> b!404326 (=> (not res!233259) (not e!243244))))

(declare-datatypes ((List!6722 0))(
  ( (Nil!6719) (Cons!6718 (h!7574 (_ BitVec 64)) (t!11904 List!6722)) )
))
(declare-fun arrayNoDuplicates!0 (array!24275 (_ BitVec 32) List!6722) Bool)

(assert (=> b!404326 (= res!233259 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6719))))

(declare-fun b!404327 () Bool)

(declare-fun e!243245 () Bool)

(assert (=> b!404327 (= e!243245 false)))

(declare-fun lt!188157 () Bool)

(declare-fun lt!188156 () array!24275)

(assert (=> b!404327 (= lt!188157 (arrayNoDuplicates!0 lt!188156 #b00000000000000000000000000000000 Nil!6719))))

(declare-fun b!404328 () Bool)

(assert (=> b!404328 (= e!243244 e!243245)))

(declare-fun res!233261 () Bool)

(assert (=> b!404328 (=> (not res!233261) (not e!243245))))

(assert (=> b!404328 (= res!233261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188156 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!404328 (= lt!188156 (array!24276 (store (arr!11584 _keys!709) i!563 k!794) (size!11936 _keys!709)))))

(declare-fun mapNonEmpty!16929 () Bool)

(declare-fun tp!33048 () Bool)

(declare-fun e!243243 () Bool)

(assert (=> mapNonEmpty!16929 (= mapRes!16929 (and tp!33048 e!243243))))

(declare-fun mapKey!16929 () (_ BitVec 32))

(declare-datatypes ((V!14711 0))(
  ( (V!14712 (val!5147 Int)) )
))
(declare-datatypes ((ValueCell!4759 0))(
  ( (ValueCellFull!4759 (v!7390 V!14711)) (EmptyCell!4759) )
))
(declare-fun mapRest!16929 () (Array (_ BitVec 32) ValueCell!4759))

(declare-datatypes ((array!24277 0))(
  ( (array!24278 (arr!11585 (Array (_ BitVec 32) ValueCell!4759)) (size!11937 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24277)

(declare-fun mapValue!16929 () ValueCell!4759)

(assert (=> mapNonEmpty!16929 (= (arr!11585 _values!549) (store mapRest!16929 mapKey!16929 mapValue!16929))))

(declare-fun b!404329 () Bool)

(declare-fun e!243242 () Bool)

(assert (=> b!404329 (= e!243242 (and e!243246 mapRes!16929))))

(declare-fun condMapEmpty!16929 () Bool)

(declare-fun mapDefault!16929 () ValueCell!4759)

