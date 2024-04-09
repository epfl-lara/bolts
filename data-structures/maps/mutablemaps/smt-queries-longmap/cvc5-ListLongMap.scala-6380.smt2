; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82044 () Bool)

(assert start!82044)

(declare-fun b_free!18439 () Bool)

(declare-fun b_next!18439 () Bool)

(assert (=> start!82044 (= b_free!18439 (not b_next!18439))))

(declare-fun tp!64126 () Bool)

(declare-fun b_and!29943 () Bool)

(assert (=> start!82044 (= tp!64126 b_and!29943)))

(declare-fun mapIsEmpty!33544 () Bool)

(declare-fun mapRes!33544 () Bool)

(assert (=> mapIsEmpty!33544 mapRes!33544))

(declare-fun b!956383 () Bool)

(declare-fun res!640466 () Bool)

(declare-fun e!538968 () Bool)

(assert (=> b!956383 (=> (not res!640466) (not e!538968))))

(declare-datatypes ((array!58227 0))(
  ( (array!58228 (arr!27989 (Array (_ BitVec 32) (_ BitVec 64))) (size!28469 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58227)

(declare-datatypes ((List!19629 0))(
  ( (Nil!19626) (Cons!19625 (h!20787 (_ BitVec 64)) (t!27998 List!19629)) )
))
(declare-fun arrayNoDuplicates!0 (array!58227 (_ BitVec 32) List!19629) Bool)

(assert (=> b!956383 (= res!640466 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19626))))

(declare-fun b!956384 () Bool)

(declare-fun res!640465 () Bool)

(assert (=> b!956384 (=> (not res!640465) (not e!538968))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58227 (_ BitVec 32)) Bool)

(assert (=> b!956384 (= res!640465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapNonEmpty!33544 () Bool)

(declare-fun tp!64125 () Bool)

(declare-fun e!538969 () Bool)

(assert (=> mapNonEmpty!33544 (= mapRes!33544 (and tp!64125 e!538969))))

(declare-fun mapKey!33544 () (_ BitVec 32))

(declare-datatypes ((V!33057 0))(
  ( (V!33058 (val!10578 Int)) )
))
(declare-datatypes ((ValueCell!10046 0))(
  ( (ValueCellFull!10046 (v!13133 V!33057)) (EmptyCell!10046) )
))
(declare-fun mapValue!33544 () ValueCell!10046)

(declare-datatypes ((array!58229 0))(
  ( (array!58230 (arr!27990 (Array (_ BitVec 32) ValueCell!10046)) (size!28470 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58229)

(declare-fun mapRest!33544 () (Array (_ BitVec 32) ValueCell!10046))

(assert (=> mapNonEmpty!33544 (= (arr!27990 _values!1197) (store mapRest!33544 mapKey!33544 mapValue!33544))))

(declare-fun b!956386 () Bool)

(declare-fun res!640467 () Bool)

(assert (=> b!956386 (=> (not res!640467) (not e!538968))))

(declare-fun i!735 () (_ BitVec 32))

(assert (=> b!956386 (= res!640467 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28469 _keys!1441))))))

(declare-fun b!956387 () Bool)

(declare-fun res!640463 () Bool)

(assert (=> b!956387 (=> (not res!640463) (not e!538968))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!956387 (= res!640463 (and (= (size!28470 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28469 _keys!1441) (size!28470 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956388 () Bool)

(declare-fun e!538971 () Bool)

(declare-fun tp_is_empty!21055 () Bool)

(assert (=> b!956388 (= e!538971 tp_is_empty!21055)))

(declare-fun b!956389 () Bool)

(declare-fun e!538967 () Bool)

(assert (=> b!956389 (= e!538967 (and e!538971 mapRes!33544))))

(declare-fun condMapEmpty!33544 () Bool)

(declare-fun mapDefault!33544 () ValueCell!10046)

