; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105536 () Bool)

(assert start!105536)

(declare-fun b_free!27137 () Bool)

(declare-fun b_next!27137 () Bool)

(assert (=> start!105536 (= b_free!27137 (not b_next!27137))))

(declare-fun tp!94928 () Bool)

(declare-fun b_and!45003 () Bool)

(assert (=> start!105536 (= tp!94928 b_and!45003)))

(declare-fun b!1256825 () Bool)

(declare-fun e!714614 () Bool)

(declare-fun e!714612 () Bool)

(declare-fun mapRes!49846 () Bool)

(assert (=> b!1256825 (= e!714614 (and e!714612 mapRes!49846))))

(declare-fun condMapEmpty!49846 () Bool)

(declare-datatypes ((V!48083 0))(
  ( (V!48084 (val!16082 Int)) )
))
(declare-datatypes ((ValueCell!15256 0))(
  ( (ValueCellFull!15256 (v!18783 V!48083)) (EmptyCell!15256) )
))
(declare-datatypes ((array!81713 0))(
  ( (array!81714 (arr!39410 (Array (_ BitVec 32) ValueCell!15256)) (size!39947 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81713)

(declare-fun mapDefault!49846 () ValueCell!15256)

