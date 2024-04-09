; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41298 () Bool)

(assert start!41298)

(declare-fun b!461692 () Bool)

(declare-fun e!269303 () Bool)

(declare-fun tp_is_empty!12445 () Bool)

(assert (=> b!461692 (= e!269303 tp_is_empty!12445)))

(declare-fun b!461693 () Bool)

(declare-fun res!276234 () Bool)

(declare-fun e!269304 () Bool)

(assert (=> b!461693 (=> (not res!276234) (not e!269304))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28653 0))(
  ( (array!28654 (arr!13761 (Array (_ BitVec 32) (_ BitVec 64))) (size!14113 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28653)

(declare-datatypes ((V!17699 0))(
  ( (V!17700 (val!6267 Int)) )
))
(declare-datatypes ((ValueCell!5879 0))(
  ( (ValueCellFull!5879 (v!8549 V!17699)) (EmptyCell!5879) )
))
(declare-datatypes ((array!28655 0))(
  ( (array!28656 (arr!13762 (Array (_ BitVec 32) ValueCell!5879)) (size!14114 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28655)

(assert (=> b!461693 (= res!276234 (and (= (size!14114 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14113 _keys!1025) (size!14114 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!20326 () Bool)

(declare-fun mapRes!20326 () Bool)

(declare-fun tp!39145 () Bool)

(assert (=> mapNonEmpty!20326 (= mapRes!20326 (and tp!39145 e!269303))))

(declare-fun mapKey!20326 () (_ BitVec 32))

(declare-fun mapRest!20326 () (Array (_ BitVec 32) ValueCell!5879))

(declare-fun mapValue!20326 () ValueCell!5879)

(assert (=> mapNonEmpty!20326 (= (arr!13762 _values!833) (store mapRest!20326 mapKey!20326 mapValue!20326))))

(declare-fun b!461695 () Bool)

(assert (=> b!461695 (= e!269304 (bvsgt #b00000000000000000000000000000000 (size!14113 _keys!1025)))))

(declare-fun b!461696 () Bool)

(declare-fun e!269306 () Bool)

(declare-fun e!269305 () Bool)

(assert (=> b!461696 (= e!269306 (and e!269305 mapRes!20326))))

(declare-fun condMapEmpty!20326 () Bool)

(declare-fun mapDefault!20326 () ValueCell!5879)

