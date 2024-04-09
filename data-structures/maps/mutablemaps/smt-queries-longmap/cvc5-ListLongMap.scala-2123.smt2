; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35944 () Bool)

(assert start!35944)

(declare-fun b!360968 () Bool)

(declare-fun res!200872 () Bool)

(declare-fun e!221025 () Bool)

(assert (=> b!360968 (=> (not res!200872) (not e!221025))))

(declare-datatypes ((array!20239 0))(
  ( (array!20240 (arr!9607 (Array (_ BitVec 32) (_ BitVec 64))) (size!9959 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20239)

(declare-fun extraKeys!1198 () (_ BitVec 32))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-datatypes ((V!12123 0))(
  ( (V!12124 (val!4224 Int)) )
))
(declare-datatypes ((ValueCell!3836 0))(
  ( (ValueCellFull!3836 (v!6414 V!12123)) (EmptyCell!3836) )
))
(declare-datatypes ((array!20241 0))(
  ( (array!20242 (arr!9608 (Array (_ BitVec 32) ValueCell!3836)) (size!9960 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20241)

(assert (=> b!360968 (= res!200872 (and (= (size!9960 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9959 _keys!1541) (size!9960 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!360969 () Bool)

(declare-fun e!221023 () Bool)

(declare-fun tp_is_empty!8359 () Bool)

(assert (=> b!360969 (= e!221023 tp_is_empty!8359)))

(declare-fun b!360970 () Bool)

(assert (=> b!360970 (= e!221025 (and (bvsle #b00000000000000000000000000000000 (size!9959 _keys!1541)) (bvsge (size!9959 _keys!1541) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!14055 () Bool)

(declare-fun mapRes!14055 () Bool)

(declare-fun tp!28131 () Bool)

(assert (=> mapNonEmpty!14055 (= mapRes!14055 (and tp!28131 e!221023))))

(declare-fun mapKey!14055 () (_ BitVec 32))

(declare-fun mapRest!14055 () (Array (_ BitVec 32) ValueCell!3836))

(declare-fun mapValue!14055 () ValueCell!3836)

(assert (=> mapNonEmpty!14055 (= (arr!9608 _values!1277) (store mapRest!14055 mapKey!14055 mapValue!14055))))

(declare-fun res!200873 () Bool)

(assert (=> start!35944 (=> (not res!200873) (not e!221025))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35944 (= res!200873 (validMask!0 mask!1943))))

(assert (=> start!35944 e!221025))

(assert (=> start!35944 true))

(declare-fun e!221026 () Bool)

(declare-fun array_inv!7062 (array!20241) Bool)

(assert (=> start!35944 (and (array_inv!7062 _values!1277) e!221026)))

(declare-fun array_inv!7063 (array!20239) Bool)

(assert (=> start!35944 (array_inv!7063 _keys!1541)))

(declare-fun b!360971 () Bool)

(declare-fun e!221022 () Bool)

(assert (=> b!360971 (= e!221026 (and e!221022 mapRes!14055))))

(declare-fun condMapEmpty!14055 () Bool)

(declare-fun mapDefault!14055 () ValueCell!3836)

