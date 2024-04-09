; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39114 () Bool)

(assert start!39114)

(declare-fun b_free!9373 () Bool)

(declare-fun b_next!9373 () Bool)

(assert (=> start!39114 (= b_free!9373 (not b_next!9373))))

(declare-fun tp!33647 () Bool)

(declare-fun b_and!16777 () Bool)

(assert (=> start!39114 (= tp!33647 b_and!16777)))

(declare-fun mapNonEmpty!17409 () Bool)

(declare-fun mapRes!17409 () Bool)

(declare-fun tp!33648 () Bool)

(declare-fun e!246126 () Bool)

(assert (=> mapNonEmpty!17409 (= mapRes!17409 (and tp!33648 e!246126))))

(declare-datatypes ((V!15139 0))(
  ( (V!15140 (val!5307 Int)) )
))
(declare-datatypes ((ValueCell!4919 0))(
  ( (ValueCellFull!4919 (v!7550 V!15139)) (EmptyCell!4919) )
))
(declare-fun mapValue!17409 () ValueCell!4919)

(declare-fun mapKey!17409 () (_ BitVec 32))

(declare-datatypes ((array!24899 0))(
  ( (array!24900 (arr!11896 (Array (_ BitVec 32) ValueCell!4919)) (size!12248 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24899)

(declare-fun mapRest!17409 () (Array (_ BitVec 32) ValueCell!4919))

(assert (=> mapNonEmpty!17409 (= (arr!11896 _values!549) (store mapRest!17409 mapKey!17409 mapValue!17409))))

(declare-fun b!410802 () Bool)

(declare-fun res!238301 () Bool)

(declare-fun e!246122 () Bool)

(assert (=> b!410802 (=> (not res!238301) (not e!246122))))

(declare-datatypes ((array!24901 0))(
  ( (array!24902 (arr!11897 (Array (_ BitVec 32) (_ BitVec 64))) (size!12249 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24901)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!410802 (= res!238301 (or (= (select (arr!11897 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11897 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!410804 () Bool)

(declare-fun tp_is_empty!10525 () Bool)

(assert (=> b!410804 (= e!246126 tp_is_empty!10525)))

(declare-fun b!410805 () Bool)

(declare-fun res!238291 () Bool)

(declare-fun e!246123 () Bool)

(assert (=> b!410805 (=> (not res!238291) (not e!246123))))

(declare-fun lt!189156 () array!24901)

(declare-datatypes ((List!6874 0))(
  ( (Nil!6871) (Cons!6870 (h!7726 (_ BitVec 64)) (t!12056 List!6874)) )
))
(declare-fun arrayNoDuplicates!0 (array!24901 (_ BitVec 32) List!6874) Bool)

(assert (=> b!410805 (= res!238291 (arrayNoDuplicates!0 lt!189156 #b00000000000000000000000000000000 Nil!6871))))

(declare-fun b!410806 () Bool)

(declare-fun res!238297 () Bool)

(assert (=> b!410806 (=> (not res!238297) (not e!246122))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24901 (_ BitVec 32)) Bool)

(assert (=> b!410806 (= res!238297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!410807 () Bool)

(declare-fun res!238293 () Bool)

(assert (=> b!410807 (=> (not res!238293) (not e!246122))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24901 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!410807 (= res!238293 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!410808 () Bool)

(declare-fun res!238300 () Bool)

(assert (=> b!410808 (=> (not res!238300) (not e!246122))))

(assert (=> b!410808 (= res!238300 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12249 _keys!709))))))

(declare-fun b!410809 () Bool)

(declare-fun res!238294 () Bool)

(assert (=> b!410809 (=> (not res!238294) (not e!246122))))

(assert (=> b!410809 (= res!238294 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6871))))

(declare-fun b!410810 () Bool)

(declare-fun res!238302 () Bool)

(assert (=> b!410810 (=> (not res!238302) (not e!246123))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!410810 (= res!238302 (bvsle from!863 i!563))))

(declare-fun b!410811 () Bool)

(declare-fun res!238292 () Bool)

(assert (=> b!410811 (=> (not res!238292) (not e!246122))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!410811 (= res!238292 (and (= (size!12248 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12249 _keys!709) (size!12248 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17409 () Bool)

(assert (=> mapIsEmpty!17409 mapRes!17409))

(declare-fun b!410812 () Bool)

(declare-fun e!246127 () Bool)

(declare-fun e!246125 () Bool)

(assert (=> b!410812 (= e!246127 (and e!246125 mapRes!17409))))

(declare-fun condMapEmpty!17409 () Bool)

(declare-fun mapDefault!17409 () ValueCell!4919)

