; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38548 () Bool)

(assert start!38548)

(declare-fun b!398231 () Bool)

(declare-fun res!228919 () Bool)

(declare-fun e!240704 () Bool)

(assert (=> b!398231 (=> (not res!228919) (not e!240704))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!23797 0))(
  ( (array!23798 (arr!11345 (Array (_ BitVec 32) (_ BitVec 64))) (size!11697 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23797)

(assert (=> b!398231 (= res!228919 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11697 _keys!709))))))

(declare-fun b!398232 () Bool)

(declare-fun res!228922 () Bool)

(assert (=> b!398232 (=> (not res!228922) (not e!240704))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398232 (= res!228922 (validMask!0 mask!1025))))

(declare-fun b!398233 () Bool)

(declare-fun res!228916 () Bool)

(assert (=> b!398233 (=> (not res!228916) (not e!240704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23797 (_ BitVec 32)) Bool)

(assert (=> b!398233 (= res!228916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!398235 () Bool)

(declare-fun e!240706 () Bool)

(assert (=> b!398235 (= e!240706 false)))

(declare-fun lt!187418 () Bool)

(declare-fun lt!187419 () array!23797)

(declare-datatypes ((List!6531 0))(
  ( (Nil!6528) (Cons!6527 (h!7383 (_ BitVec 64)) (t!11713 List!6531)) )
))
(declare-fun arrayNoDuplicates!0 (array!23797 (_ BitVec 32) List!6531) Bool)

(assert (=> b!398235 (= lt!187418 (arrayNoDuplicates!0 lt!187419 #b00000000000000000000000000000000 Nil!6528))))

(declare-fun b!398236 () Bool)

(assert (=> b!398236 (= e!240704 e!240706)))

(declare-fun res!228921 () Bool)

(assert (=> b!398236 (=> (not res!228921) (not e!240706))))

(assert (=> b!398236 (= res!228921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187419 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!398236 (= lt!187419 (array!23798 (store (arr!11345 _keys!709) i!563 k!794) (size!11697 _keys!709)))))

(declare-fun b!398237 () Bool)

(declare-fun e!240709 () Bool)

(declare-fun tp_is_empty!9959 () Bool)

(assert (=> b!398237 (= e!240709 tp_is_empty!9959)))

(declare-fun mapNonEmpty!16560 () Bool)

(declare-fun mapRes!16560 () Bool)

(declare-fun tp!32355 () Bool)

(assert (=> mapNonEmpty!16560 (= mapRes!16560 (and tp!32355 e!240709))))

(declare-datatypes ((V!14383 0))(
  ( (V!14384 (val!5024 Int)) )
))
(declare-datatypes ((ValueCell!4636 0))(
  ( (ValueCellFull!4636 (v!7267 V!14383)) (EmptyCell!4636) )
))
(declare-datatypes ((array!23799 0))(
  ( (array!23800 (arr!11346 (Array (_ BitVec 32) ValueCell!4636)) (size!11698 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23799)

(declare-fun mapValue!16560 () ValueCell!4636)

(declare-fun mapRest!16560 () (Array (_ BitVec 32) ValueCell!4636))

(declare-fun mapKey!16560 () (_ BitVec 32))

(assert (=> mapNonEmpty!16560 (= (arr!11346 _values!549) (store mapRest!16560 mapKey!16560 mapValue!16560))))

(declare-fun b!398238 () Bool)

(declare-fun res!228917 () Bool)

(assert (=> b!398238 (=> (not res!228917) (not e!240704))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!398238 (= res!228917 (and (= (size!11698 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11697 _keys!709) (size!11698 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!398239 () Bool)

(declare-fun e!240705 () Bool)

(assert (=> b!398239 (= e!240705 tp_is_empty!9959)))

(declare-fun b!398240 () Bool)

(declare-fun res!228924 () Bool)

(assert (=> b!398240 (=> (not res!228924) (not e!240704))))

(assert (=> b!398240 (= res!228924 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6528))))

(declare-fun b!398241 () Bool)

(declare-fun res!228915 () Bool)

(assert (=> b!398241 (=> (not res!228915) (not e!240704))))

(declare-fun arrayContainsKey!0 (array!23797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!398241 (= res!228915 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!398234 () Bool)

(declare-fun res!228923 () Bool)

(assert (=> b!398234 (=> (not res!228923) (not e!240704))))

(assert (=> b!398234 (= res!228923 (or (= (select (arr!11345 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11345 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!228920 () Bool)

(assert (=> start!38548 (=> (not res!228920) (not e!240704))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38548 (= res!228920 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11697 _keys!709))))))

(assert (=> start!38548 e!240704))

(assert (=> start!38548 true))

(declare-fun e!240708 () Bool)

(declare-fun array_inv!8304 (array!23799) Bool)

(assert (=> start!38548 (and (array_inv!8304 _values!549) e!240708)))

(declare-fun array_inv!8305 (array!23797) Bool)

(assert (=> start!38548 (array_inv!8305 _keys!709)))

(declare-fun mapIsEmpty!16560 () Bool)

(assert (=> mapIsEmpty!16560 mapRes!16560))

(declare-fun b!398242 () Bool)

(assert (=> b!398242 (= e!240708 (and e!240705 mapRes!16560))))

(declare-fun condMapEmpty!16560 () Bool)

(declare-fun mapDefault!16560 () ValueCell!4636)

