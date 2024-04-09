; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34562 () Bool)

(assert start!34562)

(declare-fun b_free!7459 () Bool)

(declare-fun b_next!7459 () Bool)

(assert (=> start!34562 (= b_free!7459 (not b_next!7459))))

(declare-fun tp!25925 () Bool)

(declare-fun b_and!14687 () Bool)

(assert (=> start!34562 (= tp!25925 b_and!14687)))

(declare-fun b!345170 () Bool)

(declare-fun res!191027 () Bool)

(declare-fun e!211572 () Bool)

(assert (=> b!345170 (=> (not res!191027) (not e!211572))))

(declare-datatypes ((array!18377 0))(
  ( (array!18378 (arr!8701 (Array (_ BitVec 32) (_ BitVec 64))) (size!9053 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18377)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18377 (_ BitVec 32)) Bool)

(assert (=> b!345170 (= res!191027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!345171 () Bool)

(declare-fun res!191025 () Bool)

(assert (=> b!345171 (=> (not res!191025) (not e!211572))))

(declare-datatypes ((List!5062 0))(
  ( (Nil!5059) (Cons!5058 (h!5914 (_ BitVec 64)) (t!10188 List!5062)) )
))
(declare-fun arrayNoDuplicates!0 (array!18377 (_ BitVec 32) List!5062) Bool)

(assert (=> b!345171 (= res!191025 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5059))))

(declare-fun b!345172 () Bool)

(declare-fun res!191028 () Bool)

(assert (=> b!345172 (=> (not res!191028) (not e!211572))))

(declare-datatypes ((V!10859 0))(
  ( (V!10860 (val!3750 Int)) )
))
(declare-datatypes ((ValueCell!3362 0))(
  ( (ValueCellFull!3362 (v!5923 V!10859)) (EmptyCell!3362) )
))
(declare-datatypes ((array!18379 0))(
  ( (array!18380 (arr!8702 (Array (_ BitVec 32) ValueCell!3362)) (size!9054 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18379)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!345172 (= res!191028 (and (= (size!9054 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9053 _keys!1895) (size!9054 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!12558 () Bool)

(declare-fun mapRes!12558 () Bool)

(declare-fun tp!25926 () Bool)

(declare-fun e!211570 () Bool)

(assert (=> mapNonEmpty!12558 (= mapRes!12558 (and tp!25926 e!211570))))

(declare-fun mapRest!12558 () (Array (_ BitVec 32) ValueCell!3362))

(declare-fun mapKey!12558 () (_ BitVec 32))

(declare-fun mapValue!12558 () ValueCell!3362)

(assert (=> mapNonEmpty!12558 (= (arr!8702 _values!1525) (store mapRest!12558 mapKey!12558 mapValue!12558))))

(declare-fun res!191024 () Bool)

(assert (=> start!34562 (=> (not res!191024) (not e!211572))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34562 (= res!191024 (validMask!0 mask!2385))))

(assert (=> start!34562 e!211572))

(assert (=> start!34562 true))

(declare-fun tp_is_empty!7411 () Bool)

(assert (=> start!34562 tp_is_empty!7411))

(assert (=> start!34562 tp!25925))

(declare-fun e!211567 () Bool)

(declare-fun array_inv!6434 (array!18379) Bool)

(assert (=> start!34562 (and (array_inv!6434 _values!1525) e!211567)))

(declare-fun array_inv!6435 (array!18377) Bool)

(assert (=> start!34562 (array_inv!6435 _keys!1895)))

(declare-fun b!345173 () Bool)

(declare-fun e!211571 () Bool)

(assert (=> b!345173 (= e!211572 e!211571)))

(declare-fun res!191029 () Bool)

(assert (=> b!345173 (=> (not res!191029) (not e!211571))))

(declare-datatypes ((SeekEntryResult!3351 0))(
  ( (MissingZero!3351 (index!15583 (_ BitVec 32))) (Found!3351 (index!15584 (_ BitVec 32))) (Intermediate!3351 (undefined!4163 Bool) (index!15585 (_ BitVec 32)) (x!34398 (_ BitVec 32))) (Undefined!3351) (MissingVacant!3351 (index!15586 (_ BitVec 32))) )
))
(declare-fun lt!162819 () SeekEntryResult!3351)

(declare-fun k!1348 () (_ BitVec 64))

(assert (=> b!345173 (= res!191029 (and (is-Found!3351 lt!162819) (= (select (arr!8701 _keys!1895) (index!15584 lt!162819)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18377 (_ BitVec 32)) SeekEntryResult!3351)

(assert (=> b!345173 (= lt!162819 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!345174 () Bool)

(declare-fun e!211568 () Bool)

(assert (=> b!345174 (= e!211568 tp_is_empty!7411)))

(declare-fun b!345175 () Bool)

(declare-fun res!191026 () Bool)

(assert (=> b!345175 (=> (not res!191026) (not e!211572))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!345175 (= res!191026 (validKeyInArray!0 k!1348))))

(declare-fun b!345176 () Bool)

(assert (=> b!345176 (= e!211567 (and e!211568 mapRes!12558))))

(declare-fun condMapEmpty!12558 () Bool)

(declare-fun mapDefault!12558 () ValueCell!3362)

