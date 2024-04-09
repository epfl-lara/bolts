; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38380 () Bool)

(assert start!38380)

(declare-fun b!395700 () Bool)

(declare-fun res!226998 () Bool)

(declare-fun e!239509 () Bool)

(assert (=> b!395700 (=> (not res!226998) (not e!239509))))

(declare-datatypes ((array!23561 0))(
  ( (array!23562 (arr!11230 (Array (_ BitVec 32) (_ BitVec 64))) (size!11582 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23561)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!395700 (= res!226998 (or (= (select (arr!11230 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11230 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!395701 () Bool)

(declare-fun res!226991 () Bool)

(assert (=> b!395701 (=> (not res!226991) (not e!239509))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!395701 (= res!226991 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!395702 () Bool)

(assert (=> b!395702 (= e!239509 (and (bvsle #b00000000000000000000000000000000 (size!11582 _keys!709)) (bvsge (size!11582 _keys!709) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!16371 () Bool)

(declare-fun mapRes!16371 () Bool)

(assert (=> mapIsEmpty!16371 mapRes!16371))

(declare-fun b!395703 () Bool)

(declare-fun res!226994 () Bool)

(assert (=> b!395703 (=> (not res!226994) (not e!239509))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!395703 (= res!226994 (validKeyInArray!0 k!794))))

(declare-fun b!395704 () Bool)

(declare-fun res!226995 () Bool)

(assert (=> b!395704 (=> (not res!226995) (not e!239509))))

(assert (=> b!395704 (= res!226995 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11582 _keys!709))))))

(declare-fun b!395705 () Bool)

(declare-fun e!239510 () Bool)

(declare-fun tp_is_empty!9839 () Bool)

(assert (=> b!395705 (= e!239510 tp_is_empty!9839)))

(declare-fun b!395706 () Bool)

(declare-fun res!226990 () Bool)

(assert (=> b!395706 (=> (not res!226990) (not e!239509))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395706 (= res!226990 (validMask!0 mask!1025))))

(declare-fun b!395707 () Bool)

(declare-fun res!226993 () Bool)

(assert (=> b!395707 (=> (not res!226993) (not e!239509))))

(declare-datatypes ((List!6483 0))(
  ( (Nil!6480) (Cons!6479 (h!7335 (_ BitVec 64)) (t!11665 List!6483)) )
))
(declare-fun arrayNoDuplicates!0 (array!23561 (_ BitVec 32) List!6483) Bool)

(assert (=> b!395707 (= res!226993 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6480))))

(declare-fun mapNonEmpty!16371 () Bool)

(declare-fun tp!32166 () Bool)

(assert (=> mapNonEmpty!16371 (= mapRes!16371 (and tp!32166 e!239510))))

(declare-fun mapKey!16371 () (_ BitVec 32))

(declare-datatypes ((V!14223 0))(
  ( (V!14224 (val!4964 Int)) )
))
(declare-datatypes ((ValueCell!4576 0))(
  ( (ValueCellFull!4576 (v!7206 V!14223)) (EmptyCell!4576) )
))
(declare-datatypes ((array!23563 0))(
  ( (array!23564 (arr!11231 (Array (_ BitVec 32) ValueCell!4576)) (size!11583 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23563)

(declare-fun mapRest!16371 () (Array (_ BitVec 32) ValueCell!4576))

(declare-fun mapValue!16371 () ValueCell!4576)

(assert (=> mapNonEmpty!16371 (= (arr!11231 _values!549) (store mapRest!16371 mapKey!16371 mapValue!16371))))

(declare-fun b!395709 () Bool)

(declare-fun res!226999 () Bool)

(assert (=> b!395709 (=> (not res!226999) (not e!239509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23561 (_ BitVec 32)) Bool)

(assert (=> b!395709 (= res!226999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!23562 (store (arr!11230 _keys!709) i!563 k!794) (size!11582 _keys!709)) mask!1025))))

(declare-fun b!395708 () Bool)

(declare-fun res!226997 () Bool)

(assert (=> b!395708 (=> (not res!226997) (not e!239509))))

(assert (=> b!395708 (= res!226997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!226996 () Bool)

(assert (=> start!38380 (=> (not res!226996) (not e!239509))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38380 (= res!226996 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11582 _keys!709))))))

(assert (=> start!38380 e!239509))

(assert (=> start!38380 true))

(declare-fun e!239508 () Bool)

(declare-fun array_inv!8224 (array!23563) Bool)

(assert (=> start!38380 (and (array_inv!8224 _values!549) e!239508)))

(declare-fun array_inv!8225 (array!23561) Bool)

(assert (=> start!38380 (array_inv!8225 _keys!709)))

(declare-fun b!395710 () Bool)

(declare-fun e!239506 () Bool)

(assert (=> b!395710 (= e!239508 (and e!239506 mapRes!16371))))

(declare-fun condMapEmpty!16371 () Bool)

(declare-fun mapDefault!16371 () ValueCell!4576)

