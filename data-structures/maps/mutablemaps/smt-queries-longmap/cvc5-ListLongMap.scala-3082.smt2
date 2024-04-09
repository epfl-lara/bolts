; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43392 () Bool)

(assert start!43392)

(declare-fun b_free!12211 () Bool)

(declare-fun b_next!12211 () Bool)

(assert (=> start!43392 (= b_free!12211 (not b_next!12211))))

(declare-fun tp!42909 () Bool)

(declare-fun b_and!20985 () Bool)

(assert (=> start!43392 (= tp!42909 b_and!20985)))

(declare-fun b!480498 () Bool)

(declare-fun res!286611 () Bool)

(declare-fun e!282726 () Bool)

(assert (=> b!480498 (=> (not res!286611) (not e!282726))))

(declare-datatypes ((array!31081 0))(
  ( (array!31082 (arr!14942 (Array (_ BitVec 32) (_ BitVec 64))) (size!15300 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31081)

(declare-datatypes ((List!9179 0))(
  ( (Nil!9176) (Cons!9175 (h!10031 (_ BitVec 64)) (t!15397 List!9179)) )
))
(declare-fun arrayNoDuplicates!0 (array!31081 (_ BitVec 32) List!9179) Bool)

(assert (=> b!480498 (= res!286611 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9176))))

(declare-fun b!480499 () Bool)

(declare-fun res!286609 () Bool)

(assert (=> b!480499 (=> (not res!286609) (not e!282726))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31081 (_ BitVec 32)) Bool)

(assert (=> b!480499 (= res!286609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!480500 () Bool)

(declare-fun e!282729 () Bool)

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31081 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!480500 (= e!282729 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!480501 () Bool)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!480501 (= e!282729 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!480502 () Bool)

(declare-fun res!286612 () Bool)

(assert (=> b!480502 (=> (not res!286612) (not e!282726))))

(declare-datatypes ((V!19369 0))(
  ( (V!19370 (val!6909 Int)) )
))
(declare-datatypes ((ValueCell!6500 0))(
  ( (ValueCellFull!6500 (v!9196 V!19369)) (EmptyCell!6500) )
))
(declare-datatypes ((array!31083 0))(
  ( (array!31084 (arr!14943 (Array (_ BitVec 32) ValueCell!6500)) (size!15301 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31083)

(assert (=> b!480502 (= res!286612 (and (= (size!15301 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15300 _keys!1874) (size!15301 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun res!286610 () Bool)

(assert (=> start!43392 (=> (not res!286610) (not e!282726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43392 (= res!286610 (validMask!0 mask!2352))))

(assert (=> start!43392 e!282726))

(assert (=> start!43392 true))

(declare-fun tp_is_empty!13723 () Bool)

(assert (=> start!43392 tp_is_empty!13723))

(declare-fun e!282727 () Bool)

(declare-fun array_inv!10764 (array!31083) Bool)

(assert (=> start!43392 (and (array_inv!10764 _values!1516) e!282727)))

(assert (=> start!43392 tp!42909))

(declare-fun array_inv!10765 (array!31081) Bool)

(assert (=> start!43392 (array_inv!10765 _keys!1874)))

(declare-fun b!480503 () Bool)

(declare-fun e!282725 () Bool)

(assert (=> b!480503 (= e!282725 tp_is_empty!13723)))

(declare-fun b!480504 () Bool)

(declare-fun e!282728 () Bool)

(declare-fun mapRes!22288 () Bool)

(assert (=> b!480504 (= e!282727 (and e!282728 mapRes!22288))))

(declare-fun condMapEmpty!22288 () Bool)

(declare-fun mapDefault!22288 () ValueCell!6500)

