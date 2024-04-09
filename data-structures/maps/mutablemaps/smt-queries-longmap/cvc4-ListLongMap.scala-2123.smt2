; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35948 () Bool)

(assert start!35948)

(declare-fun mapNonEmpty!14061 () Bool)

(declare-fun mapRes!14061 () Bool)

(declare-fun tp!28137 () Bool)

(declare-fun e!221052 () Bool)

(assert (=> mapNonEmpty!14061 (= mapRes!14061 (and tp!28137 e!221052))))

(declare-datatypes ((V!12127 0))(
  ( (V!12128 (val!4226 Int)) )
))
(declare-datatypes ((ValueCell!3838 0))(
  ( (ValueCellFull!3838 (v!6416 V!12127)) (EmptyCell!3838) )
))
(declare-datatypes ((array!20247 0))(
  ( (array!20248 (arr!9611 (Array (_ BitVec 32) ValueCell!3838)) (size!9963 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20247)

(declare-fun mapRest!14061 () (Array (_ BitVec 32) ValueCell!3838))

(declare-fun mapKey!14061 () (_ BitVec 32))

(declare-fun mapValue!14061 () ValueCell!3838)

(assert (=> mapNonEmpty!14061 (= (arr!9611 _values!1277) (store mapRest!14061 mapKey!14061 mapValue!14061))))

(declare-fun b!361004 () Bool)

(declare-fun res!200892 () Bool)

(declare-fun e!221055 () Bool)

(assert (=> b!361004 (=> (not res!200892) (not e!221055))))

(declare-datatypes ((array!20249 0))(
  ( (array!20250 (arr!9612 (Array (_ BitVec 32) (_ BitVec 64))) (size!9964 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20249)

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20249 (_ BitVec 32)) Bool)

(assert (=> b!361004 (= res!200892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun b!361005 () Bool)

(assert (=> b!361005 (= e!221055 (and (bvsle #b00000000000000000000000000000000 (size!9964 _keys!1541)) (bvsge (size!9964 _keys!1541) #b01111111111111111111111111111111)))))

(declare-fun b!361006 () Bool)

(declare-fun e!221056 () Bool)

(declare-fun tp_is_empty!8363 () Bool)

(assert (=> b!361006 (= e!221056 tp_is_empty!8363)))

(declare-fun b!361007 () Bool)

(declare-fun res!200890 () Bool)

(assert (=> b!361007 (=> (not res!200890) (not e!221055))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(assert (=> b!361007 (= res!200890 (and (= (size!9963 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9964 _keys!1541) (size!9963 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!361008 () Bool)

(assert (=> b!361008 (= e!221052 tp_is_empty!8363)))

(declare-fun b!361009 () Bool)

(declare-fun e!221054 () Bool)

(assert (=> b!361009 (= e!221054 (and e!221056 mapRes!14061))))

(declare-fun condMapEmpty!14061 () Bool)

(declare-fun mapDefault!14061 () ValueCell!3838)

