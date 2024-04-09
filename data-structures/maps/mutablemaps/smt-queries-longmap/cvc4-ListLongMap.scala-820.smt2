; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20010 () Bool)

(assert start!20010)

(declare-fun b!195939 () Bool)

(declare-fun res!92468 () Bool)

(declare-fun e!128992 () Bool)

(assert (=> b!195939 (=> (not res!92468) (not e!128992))))

(declare-datatypes ((array!8328 0))(
  ( (array!8329 (arr!3916 (Array (_ BitVec 32) (_ BitVec 64))) (size!4241 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8328)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5693 0))(
  ( (V!5694 (val!2312 Int)) )
))
(declare-datatypes ((ValueCell!1924 0))(
  ( (ValueCellFull!1924 (v!4277 V!5693)) (EmptyCell!1924) )
))
(declare-datatypes ((array!8330 0))(
  ( (array!8331 (arr!3917 (Array (_ BitVec 32) ValueCell!1924)) (size!4242 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8330)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!195939 (= res!92468 (and (= (size!4242 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4241 _keys!825) (size!4242 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!92466 () Bool)

(assert (=> start!20010 (=> (not res!92466) (not e!128992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20010 (= res!92466 (validMask!0 mask!1149))))

(assert (=> start!20010 e!128992))

(assert (=> start!20010 true))

(declare-fun e!128994 () Bool)

(declare-fun array_inv!2535 (array!8330) Bool)

(assert (=> start!20010 (and (array_inv!2535 _values!649) e!128994)))

(declare-fun array_inv!2536 (array!8328) Bool)

(assert (=> start!20010 (array_inv!2536 _keys!825)))

(declare-fun b!195940 () Bool)

(declare-fun e!128996 () Bool)

(declare-fun tp_is_empty!4535 () Bool)

(assert (=> b!195940 (= e!128996 tp_is_empty!4535)))

(declare-fun b!195941 () Bool)

(declare-fun e!128993 () Bool)

(assert (=> b!195941 (= e!128993 tp_is_empty!4535)))

(declare-fun mapNonEmpty!7865 () Bool)

(declare-fun mapRes!7865 () Bool)

(declare-fun tp!17153 () Bool)

(assert (=> mapNonEmpty!7865 (= mapRes!7865 (and tp!17153 e!128996))))

(declare-fun mapValue!7865 () ValueCell!1924)

(declare-fun mapRest!7865 () (Array (_ BitVec 32) ValueCell!1924))

(declare-fun mapKey!7865 () (_ BitVec 32))

(assert (=> mapNonEmpty!7865 (= (arr!3917 _values!649) (store mapRest!7865 mapKey!7865 mapValue!7865))))

(declare-fun mapIsEmpty!7865 () Bool)

(assert (=> mapIsEmpty!7865 mapRes!7865))

(declare-fun b!195942 () Bool)

(declare-datatypes ((List!2477 0))(
  ( (Nil!2474) (Cons!2473 (h!3115 (_ BitVec 64)) (t!7416 List!2477)) )
))
(declare-fun noDuplicate!59 (List!2477) Bool)

(assert (=> b!195942 (= e!128992 (not (noDuplicate!59 Nil!2474)))))

(declare-fun b!195943 () Bool)

(declare-fun res!92465 () Bool)

(assert (=> b!195943 (=> (not res!92465) (not e!128992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8328 (_ BitVec 32)) Bool)

(assert (=> b!195943 (= res!92465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!195944 () Bool)

(declare-fun res!92467 () Bool)

(assert (=> b!195944 (=> (not res!92467) (not e!128992))))

(assert (=> b!195944 (= res!92467 (and (bvsle #b00000000000000000000000000000000 (size!4241 _keys!825)) (bvslt (size!4241 _keys!825) #b01111111111111111111111111111111)))))

(declare-fun b!195945 () Bool)

(assert (=> b!195945 (= e!128994 (and e!128993 mapRes!7865))))

(declare-fun condMapEmpty!7865 () Bool)

(declare-fun mapDefault!7865 () ValueCell!1924)

