; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35010 () Bool)

(assert start!35010)

(declare-fun b_free!7691 () Bool)

(declare-fun b_next!7691 () Bool)

(assert (=> start!35010 (= b_free!7691 (not b_next!7691))))

(declare-fun tp!26651 () Bool)

(declare-fun b_and!14939 () Bool)

(assert (=> start!35010 (= tp!26651 b_and!14939)))

(declare-fun res!194305 () Bool)

(declare-fun e!214664 () Bool)

(assert (=> start!35010 (=> (not res!194305) (not e!214664))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35010 (= res!194305 (validMask!0 mask!2385))))

(assert (=> start!35010 e!214664))

(assert (=> start!35010 true))

(declare-fun tp_is_empty!7643 () Bool)

(assert (=> start!35010 tp_is_empty!7643))

(assert (=> start!35010 tp!26651))

(declare-datatypes ((V!11167 0))(
  ( (V!11168 (val!3866 Int)) )
))
(declare-datatypes ((ValueCell!3478 0))(
  ( (ValueCellFull!3478 (v!6049 V!11167)) (EmptyCell!3478) )
))
(declare-datatypes ((array!18839 0))(
  ( (array!18840 (arr!8922 (Array (_ BitVec 32) ValueCell!3478)) (size!9274 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18839)

(declare-fun e!214661 () Bool)

(declare-fun array_inv!6576 (array!18839) Bool)

(assert (=> start!35010 (and (array_inv!6576 _values!1525) e!214661)))

(declare-datatypes ((array!18841 0))(
  ( (array!18842 (arr!8923 (Array (_ BitVec 32) (_ BitVec 64))) (size!9275 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18841)

(declare-fun array_inv!6577 (array!18841) Bool)

(assert (=> start!35010 (array_inv!6577 _keys!1895)))

(declare-fun b!350442 () Bool)

(declare-fun res!194306 () Bool)

(assert (=> b!350442 (=> (not res!194306) (not e!214664))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!350442 (= res!194306 (validKeyInArray!0 k!1348))))

(declare-fun b!350443 () Bool)

(declare-fun e!214665 () Bool)

(assert (=> b!350443 (= e!214664 e!214665)))

(declare-fun res!194300 () Bool)

(assert (=> b!350443 (=> (not res!194300) (not e!214665))))

(declare-datatypes ((SeekEntryResult!3436 0))(
  ( (MissingZero!3436 (index!15923 (_ BitVec 32))) (Found!3436 (index!15924 (_ BitVec 32))) (Intermediate!3436 (undefined!4248 Bool) (index!15925 (_ BitVec 32)) (x!34887 (_ BitVec 32))) (Undefined!3436) (MissingVacant!3436 (index!15926 (_ BitVec 32))) )
))
(declare-fun lt!164579 () SeekEntryResult!3436)

(assert (=> b!350443 (= res!194300 (and (not (is-Found!3436 lt!164579)) (not (is-MissingZero!3436 lt!164579)) (is-MissingVacant!3436 lt!164579)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18841 (_ BitVec 32)) SeekEntryResult!3436)

(assert (=> b!350443 (= lt!164579 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!350444 () Bool)

(declare-fun res!194307 () Bool)

(assert (=> b!350444 (=> (not res!194307) (not e!214664))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!350444 (= res!194307 (and (= (size!9274 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9275 _keys!1895) (size!9274 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!350445 () Bool)

(declare-fun e!214663 () Bool)

(declare-fun mapRes!12936 () Bool)

(assert (=> b!350445 (= e!214661 (and e!214663 mapRes!12936))))

(declare-fun condMapEmpty!12936 () Bool)

(declare-fun mapDefault!12936 () ValueCell!3478)

