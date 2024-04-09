; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38448 () Bool)

(assert start!38448)

(declare-fun b!396281 () Bool)

(declare-fun res!227422 () Bool)

(declare-fun e!239807 () Bool)

(assert (=> b!396281 (=> (not res!227422) (not e!239807))))

(declare-datatypes ((array!23607 0))(
  ( (array!23608 (arr!11250 (Array (_ BitVec 32) (_ BitVec 64))) (size!11602 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23607)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!396281 (= res!227422 (or (= (select (arr!11250 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11250 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!396282 () Bool)

(declare-fun e!239806 () Bool)

(assert (=> b!396282 (= e!239807 e!239806)))

(declare-fun res!227418 () Bool)

(assert (=> b!396282 (=> (not res!227418) (not e!239806))))

(declare-fun lt!187118 () array!23607)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23607 (_ BitVec 32)) Bool)

(assert (=> b!396282 (= res!227418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187118 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!396282 (= lt!187118 (array!23608 (store (arr!11250 _keys!709) i!563 k!794) (size!11602 _keys!709)))))

(declare-fun b!396283 () Bool)

(declare-fun res!227416 () Bool)

(assert (=> b!396283 (=> (not res!227416) (not e!239807))))

(declare-fun arrayContainsKey!0 (array!23607 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396283 (= res!227416 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!396284 () Bool)

(declare-fun res!227423 () Bool)

(assert (=> b!396284 (=> (not res!227423) (not e!239807))))

(assert (=> b!396284 (= res!227423 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11602 _keys!709))))))

(declare-fun b!396285 () Bool)

(declare-fun res!227420 () Bool)

(assert (=> b!396285 (=> (not res!227420) (not e!239807))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396285 (= res!227420 (validKeyInArray!0 k!794))))

(declare-fun b!396286 () Bool)

(declare-fun res!227417 () Bool)

(assert (=> b!396286 (=> (not res!227417) (not e!239807))))

(assert (=> b!396286 (= res!227417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!396287 () Bool)

(declare-fun e!239805 () Bool)

(declare-fun tp_is_empty!9859 () Bool)

(assert (=> b!396287 (= e!239805 tp_is_empty!9859)))

(declare-fun b!396288 () Bool)

(declare-fun res!227419 () Bool)

(assert (=> b!396288 (=> (not res!227419) (not e!239807))))

(declare-datatypes ((List!6492 0))(
  ( (Nil!6489) (Cons!6488 (h!7344 (_ BitVec 64)) (t!11674 List!6492)) )
))
(declare-fun arrayNoDuplicates!0 (array!23607 (_ BitVec 32) List!6492) Bool)

(assert (=> b!396288 (= res!227419 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6489))))

(declare-fun b!396289 () Bool)

(declare-fun e!239804 () Bool)

(assert (=> b!396289 (= e!239804 tp_is_empty!9859)))

(declare-fun mapIsEmpty!16410 () Bool)

(declare-fun mapRes!16410 () Bool)

(assert (=> mapIsEmpty!16410 mapRes!16410))

(declare-fun res!227424 () Bool)

(assert (=> start!38448 (=> (not res!227424) (not e!239807))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38448 (= res!227424 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11602 _keys!709))))))

(assert (=> start!38448 e!239807))

(assert (=> start!38448 true))

(declare-datatypes ((V!14251 0))(
  ( (V!14252 (val!4974 Int)) )
))
(declare-datatypes ((ValueCell!4586 0))(
  ( (ValueCellFull!4586 (v!7217 V!14251)) (EmptyCell!4586) )
))
(declare-datatypes ((array!23609 0))(
  ( (array!23610 (arr!11251 (Array (_ BitVec 32) ValueCell!4586)) (size!11603 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23609)

(declare-fun e!239809 () Bool)

(declare-fun array_inv!8236 (array!23609) Bool)

(assert (=> start!38448 (and (array_inv!8236 _values!549) e!239809)))

(declare-fun array_inv!8237 (array!23607) Bool)

(assert (=> start!38448 (array_inv!8237 _keys!709)))

(declare-fun b!396290 () Bool)

(declare-fun res!227421 () Bool)

(assert (=> b!396290 (=> (not res!227421) (not e!239807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396290 (= res!227421 (validMask!0 mask!1025))))

(declare-fun b!396291 () Bool)

(assert (=> b!396291 (= e!239809 (and e!239804 mapRes!16410))))

(declare-fun condMapEmpty!16410 () Bool)

(declare-fun mapDefault!16410 () ValueCell!4586)

