; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35036 () Bool)

(assert start!35036)

(declare-fun b_free!7717 () Bool)

(declare-fun b_next!7717 () Bool)

(assert (=> start!35036 (= b_free!7717 (not b_next!7717))))

(declare-fun tp!26729 () Bool)

(declare-fun b_and!14965 () Bool)

(assert (=> start!35036 (= tp!26729 b_and!14965)))

(declare-fun res!194613 () Bool)

(declare-fun e!214898 () Bool)

(assert (=> start!35036 (=> (not res!194613) (not e!214898))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35036 (= res!194613 (validMask!0 mask!2385))))

(assert (=> start!35036 e!214898))

(assert (=> start!35036 true))

(declare-fun tp_is_empty!7669 () Bool)

(assert (=> start!35036 tp_is_empty!7669))

(assert (=> start!35036 tp!26729))

(declare-datatypes ((V!11203 0))(
  ( (V!11204 (val!3879 Int)) )
))
(declare-datatypes ((ValueCell!3491 0))(
  ( (ValueCellFull!3491 (v!6062 V!11203)) (EmptyCell!3491) )
))
(declare-datatypes ((array!18883 0))(
  ( (array!18884 (arr!8944 (Array (_ BitVec 32) ValueCell!3491)) (size!9296 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18883)

(declare-fun e!214896 () Bool)

(declare-fun array_inv!6594 (array!18883) Bool)

(assert (=> start!35036 (and (array_inv!6594 _values!1525) e!214896)))

(declare-datatypes ((array!18885 0))(
  ( (array!18886 (arr!8945 (Array (_ BitVec 32) (_ BitVec 64))) (size!9297 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18885)

(declare-fun array_inv!6595 (array!18885) Bool)

(assert (=> start!35036 (array_inv!6595 _keys!1895)))

(declare-fun b!350871 () Bool)

(declare-fun res!194617 () Bool)

(assert (=> b!350871 (=> (not res!194617) (not e!214898))))

(declare-datatypes ((List!5229 0))(
  ( (Nil!5226) (Cons!5225 (h!6081 (_ BitVec 64)) (t!10375 List!5229)) )
))
(declare-fun arrayNoDuplicates!0 (array!18885 (_ BitVec 32) List!5229) Bool)

(assert (=> b!350871 (= res!194617 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5226))))

(declare-fun b!350872 () Bool)

(declare-fun e!214900 () Bool)

(assert (=> b!350872 (= e!214900 tp_is_empty!7669)))

(declare-fun b!350873 () Bool)

(declare-fun e!214895 () Bool)

(assert (=> b!350873 (= e!214895 tp_is_empty!7669)))

(declare-fun mapIsEmpty!12975 () Bool)

(declare-fun mapRes!12975 () Bool)

(assert (=> mapIsEmpty!12975 mapRes!12975))

(declare-fun b!350874 () Bool)

(assert (=> b!350874 (= e!214896 (and e!214900 mapRes!12975))))

(declare-fun condMapEmpty!12975 () Bool)

(declare-fun mapDefault!12975 () ValueCell!3491)

