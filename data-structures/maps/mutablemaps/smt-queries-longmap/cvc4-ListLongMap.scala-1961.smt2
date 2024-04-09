; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34524 () Bool)

(assert start!34524)

(declare-fun b_free!7439 () Bool)

(declare-fun b_next!7439 () Bool)

(assert (=> start!34524 (= b_free!7439 (not b_next!7439))))

(declare-fun tp!25863 () Bool)

(declare-fun b_and!14665 () Bool)

(assert (=> start!34524 (= tp!25863 b_and!14665)))

(declare-fun b!344771 () Bool)

(declare-fun res!190801 () Bool)

(declare-fun e!211334 () Bool)

(assert (=> b!344771 (=> (not res!190801) (not e!211334))))

(declare-datatypes ((array!18337 0))(
  ( (array!18338 (arr!8682 (Array (_ BitVec 32) (_ BitVec 64))) (size!9034 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18337)

(declare-datatypes ((List!5047 0))(
  ( (Nil!5044) (Cons!5043 (h!5899 (_ BitVec 64)) (t!10171 List!5047)) )
))
(declare-fun arrayNoDuplicates!0 (array!18337 (_ BitVec 32) List!5047) Bool)

(assert (=> b!344771 (= res!190801 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5044))))

(declare-fun b!344772 () Bool)

(assert (=> b!344772 (= e!211334 false)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3344 0))(
  ( (MissingZero!3344 (index!15555 (_ BitVec 32))) (Found!3344 (index!15556 (_ BitVec 32))) (Intermediate!3344 (undefined!4156 Bool) (index!15557 (_ BitVec 32)) (x!34349 (_ BitVec 32))) (Undefined!3344) (MissingVacant!3344 (index!15558 (_ BitVec 32))) )
))
(declare-fun lt!162693 () SeekEntryResult!3344)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18337 (_ BitVec 32)) SeekEntryResult!3344)

(assert (=> b!344772 (= lt!162693 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!344773 () Bool)

(declare-fun res!190802 () Bool)

(assert (=> b!344773 (=> (not res!190802) (not e!211334))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18337 (_ BitVec 32)) Bool)

(assert (=> b!344773 (= res!190802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344774 () Bool)

(declare-fun res!190798 () Bool)

(assert (=> b!344774 (=> (not res!190798) (not e!211334))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((V!10831 0))(
  ( (V!10832 (val!3740 Int)) )
))
(declare-datatypes ((ValueCell!3352 0))(
  ( (ValueCellFull!3352 (v!5912 V!10831)) (EmptyCell!3352) )
))
(declare-datatypes ((array!18339 0))(
  ( (array!18340 (arr!8683 (Array (_ BitVec 32) ValueCell!3352)) (size!9035 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18339)

(assert (=> b!344774 (= res!190798 (and (= (size!9035 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9034 _keys!1895) (size!9035 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344775 () Bool)

(declare-fun e!211336 () Bool)

(declare-fun e!211335 () Bool)

(declare-fun mapRes!12525 () Bool)

(assert (=> b!344775 (= e!211336 (and e!211335 mapRes!12525))))

(declare-fun condMapEmpty!12525 () Bool)

(declare-fun mapDefault!12525 () ValueCell!3352)

