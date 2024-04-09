; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33716 () Bool)

(assert start!33716)

(declare-fun b_free!6943 () Bool)

(declare-fun b_next!6943 () Bool)

(assert (=> start!33716 (= b_free!6943 (not b_next!6943))))

(declare-fun tp!24332 () Bool)

(declare-fun b_and!14141 () Bool)

(assert (=> start!33716 (= tp!24332 b_and!14141)))

(declare-fun b!334861 () Bool)

(declare-fun res!184784 () Bool)

(declare-fun e!205557 () Bool)

(assert (=> b!334861 (=> (not res!184784) (not e!205557))))

(declare-datatypes ((array!17375 0))(
  ( (array!17376 (arr!8215 (Array (_ BitVec 32) (_ BitVec 64))) (size!8567 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17375)

(declare-datatypes ((List!4715 0))(
  ( (Nil!4712) (Cons!4711 (h!5567 (_ BitVec 64)) (t!9811 List!4715)) )
))
(declare-fun arrayNoDuplicates!0 (array!17375 (_ BitVec 32) List!4715) Bool)

(assert (=> b!334861 (= res!184784 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4712))))

(declare-fun b!334862 () Bool)

(declare-fun e!205560 () Bool)

(declare-fun e!205559 () Bool)

(assert (=> b!334862 (= e!205560 e!205559)))

(declare-fun res!184785 () Bool)

(assert (=> b!334862 (=> (not res!184785) (not e!205559))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3185 0))(
  ( (MissingZero!3185 (index!14919 (_ BitVec 32))) (Found!3185 (index!14920 (_ BitVec 32))) (Intermediate!3185 (undefined!3997 Bool) (index!14921 (_ BitVec 32)) (x!33394 (_ BitVec 32))) (Undefined!3185) (MissingVacant!3185 (index!14922 (_ BitVec 32))) )
))
(declare-fun lt!159655 () SeekEntryResult!3185)

(assert (=> b!334862 (= res!184785 (and (is-Found!3185 lt!159655) (= (select (arr!8215 _keys!1895) (index!14920 lt!159655)) k!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17375 (_ BitVec 32)) SeekEntryResult!3185)

(assert (=> b!334862 (= lt!159655 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11739 () Bool)

(declare-fun mapRes!11739 () Bool)

(assert (=> mapIsEmpty!11739 mapRes!11739))

(declare-fun b!334863 () Bool)

(declare-fun e!205554 () Bool)

(declare-fun e!205558 () Bool)

(assert (=> b!334863 (= e!205554 (and e!205558 mapRes!11739))))

(declare-fun condMapEmpty!11739 () Bool)

(declare-datatypes ((V!10171 0))(
  ( (V!10172 (val!3492 Int)) )
))
(declare-datatypes ((ValueCell!3104 0))(
  ( (ValueCellFull!3104 (v!5650 V!10171)) (EmptyCell!3104) )
))
(declare-datatypes ((array!17377 0))(
  ( (array!17378 (arr!8216 (Array (_ BitVec 32) ValueCell!3104)) (size!8568 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17377)

(declare-fun mapDefault!11739 () ValueCell!3104)

