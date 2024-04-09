; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38514 () Bool)

(assert start!38514)

(declare-fun mapIsEmpty!16509 () Bool)

(declare-fun mapRes!16509 () Bool)

(assert (=> mapIsEmpty!16509 mapRes!16509))

(declare-fun b!397568 () Bool)

(declare-fun e!240403 () Bool)

(declare-fun tp_is_empty!9925 () Bool)

(assert (=> b!397568 (= e!240403 tp_is_empty!9925)))

(declare-fun res!228405 () Bool)

(declare-fun e!240399 () Bool)

(assert (=> start!38514 (=> (not res!228405) (not e!240399))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23733 0))(
  ( (array!23734 (arr!11313 (Array (_ BitVec 32) (_ BitVec 64))) (size!11665 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23733)

(assert (=> start!38514 (= res!228405 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11665 _keys!709))))))

(assert (=> start!38514 e!240399))

(assert (=> start!38514 true))

(declare-datatypes ((V!14339 0))(
  ( (V!14340 (val!5007 Int)) )
))
(declare-datatypes ((ValueCell!4619 0))(
  ( (ValueCellFull!4619 (v!7250 V!14339)) (EmptyCell!4619) )
))
(declare-datatypes ((array!23735 0))(
  ( (array!23736 (arr!11314 (Array (_ BitVec 32) ValueCell!4619)) (size!11666 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23735)

(declare-fun e!240402 () Bool)

(declare-fun array_inv!8284 (array!23735) Bool)

(assert (=> start!38514 (and (array_inv!8284 _values!549) e!240402)))

(declare-fun array_inv!8285 (array!23733) Bool)

(assert (=> start!38514 (array_inv!8285 _keys!709)))

(declare-fun b!397569 () Bool)

(declare-fun res!228407 () Bool)

(assert (=> b!397569 (=> (not res!228407) (not e!240399))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397569 (= res!228407 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11665 _keys!709))))))

(declare-fun b!397570 () Bool)

(declare-fun res!228408 () Bool)

(assert (=> b!397570 (=> (not res!228408) (not e!240399))))

(assert (=> b!397570 (= res!228408 (or (= (select (arr!11313 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11313 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!397571 () Bool)

(declare-fun e!240400 () Bool)

(assert (=> b!397571 (= e!240400 false)))

(declare-fun lt!187317 () Bool)

(declare-fun lt!187316 () array!23733)

(declare-datatypes ((List!6518 0))(
  ( (Nil!6515) (Cons!6514 (h!7370 (_ BitVec 64)) (t!11700 List!6518)) )
))
(declare-fun arrayNoDuplicates!0 (array!23733 (_ BitVec 32) List!6518) Bool)

(assert (=> b!397571 (= lt!187317 (arrayNoDuplicates!0 lt!187316 #b00000000000000000000000000000000 Nil!6515))))

(declare-fun b!397572 () Bool)

(declare-fun res!228413 () Bool)

(assert (=> b!397572 (=> (not res!228413) (not e!240399))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397572 (= res!228413 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!397573 () Bool)

(declare-fun res!228412 () Bool)

(assert (=> b!397573 (=> (not res!228412) (not e!240399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397573 (= res!228412 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!16509 () Bool)

(declare-fun tp!32304 () Bool)

(declare-fun e!240401 () Bool)

(assert (=> mapNonEmpty!16509 (= mapRes!16509 (and tp!32304 e!240401))))

(declare-fun mapKey!16509 () (_ BitVec 32))

(declare-fun mapValue!16509 () ValueCell!4619)

(declare-fun mapRest!16509 () (Array (_ BitVec 32) ValueCell!4619))

(assert (=> mapNonEmpty!16509 (= (arr!11314 _values!549) (store mapRest!16509 mapKey!16509 mapValue!16509))))

(declare-fun b!397574 () Bool)

(declare-fun res!228414 () Bool)

(assert (=> b!397574 (=> (not res!228414) (not e!240399))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!397574 (= res!228414 (and (= (size!11666 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11665 _keys!709) (size!11666 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!397575 () Bool)

(declare-fun res!228411 () Bool)

(assert (=> b!397575 (=> (not res!228411) (not e!240399))))

(assert (=> b!397575 (= res!228411 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6515))))

(declare-fun b!397576 () Bool)

(assert (=> b!397576 (= e!240401 tp_is_empty!9925)))

(declare-fun b!397577 () Bool)

(assert (=> b!397577 (= e!240399 e!240400)))

(declare-fun res!228409 () Bool)

(assert (=> b!397577 (=> (not res!228409) (not e!240400))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23733 (_ BitVec 32)) Bool)

(assert (=> b!397577 (= res!228409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187316 mask!1025))))

(assert (=> b!397577 (= lt!187316 (array!23734 (store (arr!11313 _keys!709) i!563 k!794) (size!11665 _keys!709)))))

(declare-fun b!397578 () Bool)

(declare-fun res!228406 () Bool)

(assert (=> b!397578 (=> (not res!228406) (not e!240399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397578 (= res!228406 (validMask!0 mask!1025))))

(declare-fun b!397579 () Bool)

(declare-fun res!228410 () Bool)

(assert (=> b!397579 (=> (not res!228410) (not e!240399))))

(assert (=> b!397579 (= res!228410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!397580 () Bool)

(assert (=> b!397580 (= e!240402 (and e!240403 mapRes!16509))))

(declare-fun condMapEmpty!16509 () Bool)

(declare-fun mapDefault!16509 () ValueCell!4619)

