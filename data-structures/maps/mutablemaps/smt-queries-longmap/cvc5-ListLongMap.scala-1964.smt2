; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34538 () Bool)

(assert start!34538)

(declare-fun b_free!7453 () Bool)

(declare-fun b_next!7453 () Bool)

(assert (=> start!34538 (= b_free!7453 (not b_next!7453))))

(declare-fun tp!25904 () Bool)

(declare-fun b_and!14679 () Bool)

(assert (=> start!34538 (= tp!25904 b_and!14679)))

(declare-fun b!344961 () Bool)

(declare-fun res!190924 () Bool)

(declare-fun e!211443 () Bool)

(assert (=> b!344961 (=> (not res!190924) (not e!211443))))

(declare-datatypes ((array!18365 0))(
  ( (array!18366 (arr!8696 (Array (_ BitVec 32) (_ BitVec 64))) (size!9048 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18365)

(declare-datatypes ((List!5059 0))(
  ( (Nil!5056) (Cons!5055 (h!5911 (_ BitVec 64)) (t!10183 List!5059)) )
))
(declare-fun arrayNoDuplicates!0 (array!18365 (_ BitVec 32) List!5059) Bool)

(assert (=> b!344961 (= res!190924 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5056))))

(declare-fun b!344962 () Bool)

(declare-fun e!211441 () Bool)

(declare-fun tp_is_empty!7405 () Bool)

(assert (=> b!344962 (= e!211441 tp_is_empty!7405)))

(declare-fun mapIsEmpty!12546 () Bool)

(declare-fun mapRes!12546 () Bool)

(assert (=> mapIsEmpty!12546 mapRes!12546))

(declare-fun mapNonEmpty!12546 () Bool)

(declare-fun tp!25905 () Bool)

(assert (=> mapNonEmpty!12546 (= mapRes!12546 (and tp!25905 e!211441))))

(declare-datatypes ((V!10851 0))(
  ( (V!10852 (val!3747 Int)) )
))
(declare-datatypes ((ValueCell!3359 0))(
  ( (ValueCellFull!3359 (v!5919 V!10851)) (EmptyCell!3359) )
))
(declare-fun mapRest!12546 () (Array (_ BitVec 32) ValueCell!3359))

(declare-datatypes ((array!18367 0))(
  ( (array!18368 (arr!8697 (Array (_ BitVec 32) ValueCell!3359)) (size!9049 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18367)

(declare-fun mapKey!12546 () (_ BitVec 32))

(declare-fun mapValue!12546 () ValueCell!3359)

(assert (=> mapNonEmpty!12546 (= (arr!8697 _values!1525) (store mapRest!12546 mapKey!12546 mapValue!12546))))

(declare-fun b!344963 () Bool)

(declare-fun res!190923 () Bool)

(assert (=> b!344963 (=> (not res!190923) (not e!211443))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18365 (_ BitVec 32)) Bool)

(assert (=> b!344963 (= res!190923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344964 () Bool)

(declare-fun e!211442 () Bool)

(declare-fun e!211439 () Bool)

(assert (=> b!344964 (= e!211442 (and e!211439 mapRes!12546))))

(declare-fun condMapEmpty!12546 () Bool)

(declare-fun mapDefault!12546 () ValueCell!3359)

