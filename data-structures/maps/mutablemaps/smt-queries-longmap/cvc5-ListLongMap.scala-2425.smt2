; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38316 () Bool)

(assert start!38316)

(declare-fun b!394874 () Bool)

(declare-fun res!226419 () Bool)

(declare-fun e!239089 () Bool)

(assert (=> b!394874 (=> (not res!226419) (not e!239089))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394874 (= res!226419 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!16290 () Bool)

(declare-fun mapRes!16290 () Bool)

(assert (=> mapIsEmpty!16290 mapRes!16290))

(declare-fun b!394875 () Bool)

(declare-fun e!239093 () Bool)

(declare-fun tp_is_empty!9787 () Bool)

(assert (=> b!394875 (= e!239093 tp_is_empty!9787)))

(declare-fun b!394876 () Bool)

(declare-fun res!226418 () Bool)

(assert (=> b!394876 (=> (not res!226418) (not e!239089))))

(declare-datatypes ((array!23459 0))(
  ( (array!23460 (arr!11180 (Array (_ BitVec 32) (_ BitVec 64))) (size!11532 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23459)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14155 0))(
  ( (V!14156 (val!4938 Int)) )
))
(declare-datatypes ((ValueCell!4550 0))(
  ( (ValueCellFull!4550 (v!7180 V!14155)) (EmptyCell!4550) )
))
(declare-datatypes ((array!23461 0))(
  ( (array!23462 (arr!11181 (Array (_ BitVec 32) ValueCell!4550)) (size!11533 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23461)

(assert (=> b!394876 (= res!226418 (and (= (size!11533 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11532 _keys!709) (size!11533 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!394873 () Bool)

(assert (=> b!394873 (= e!239089 false)))

(declare-fun lt!187022 () Bool)

(declare-datatypes ((List!6462 0))(
  ( (Nil!6459) (Cons!6458 (h!7314 (_ BitVec 64)) (t!11644 List!6462)) )
))
(declare-fun arrayNoDuplicates!0 (array!23459 (_ BitVec 32) List!6462) Bool)

(assert (=> b!394873 (= lt!187022 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6459))))

(declare-fun res!226417 () Bool)

(assert (=> start!38316 (=> (not res!226417) (not e!239089))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38316 (= res!226417 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11532 _keys!709))))))

(assert (=> start!38316 e!239089))

(assert (=> start!38316 true))

(declare-fun e!239090 () Bool)

(declare-fun array_inv!8184 (array!23461) Bool)

(assert (=> start!38316 (and (array_inv!8184 _values!549) e!239090)))

(declare-fun array_inv!8185 (array!23459) Bool)

(assert (=> start!38316 (array_inv!8185 _keys!709)))

(declare-fun b!394877 () Bool)

(declare-fun e!239092 () Bool)

(assert (=> b!394877 (= e!239092 tp_is_empty!9787)))

(declare-fun mapNonEmpty!16290 () Bool)

(declare-fun tp!32085 () Bool)

(assert (=> mapNonEmpty!16290 (= mapRes!16290 (and tp!32085 e!239093))))

(declare-fun mapValue!16290 () ValueCell!4550)

(declare-fun mapKey!16290 () (_ BitVec 32))

(declare-fun mapRest!16290 () (Array (_ BitVec 32) ValueCell!4550))

(assert (=> mapNonEmpty!16290 (= (arr!11181 _values!549) (store mapRest!16290 mapKey!16290 mapValue!16290))))

(declare-fun b!394878 () Bool)

(declare-fun res!226420 () Bool)

(assert (=> b!394878 (=> (not res!226420) (not e!239089))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23459 (_ BitVec 32)) Bool)

(assert (=> b!394878 (= res!226420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!394879 () Bool)

(assert (=> b!394879 (= e!239090 (and e!239092 mapRes!16290))))

(declare-fun condMapEmpty!16290 () Bool)

(declare-fun mapDefault!16290 () ValueCell!4550)

