; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20272 () Bool)

(assert start!20272)

(declare-fun b_free!4919 () Bool)

(declare-fun b_next!4919 () Bool)

(assert (=> start!20272 (= b_free!4919 (not b_next!4919))))

(declare-fun tp!17789 () Bool)

(declare-fun b_and!11683 () Bool)

(assert (=> start!20272 (= tp!17789 b_and!11683)))

(declare-fun res!94711 () Bool)

(declare-fun e!130851 () Bool)

(assert (=> start!20272 (=> (not res!94711) (not e!130851))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20272 (= res!94711 (validMask!0 mask!1149))))

(assert (=> start!20272 e!130851))

(declare-datatypes ((V!6013 0))(
  ( (V!6014 (val!2432 Int)) )
))
(declare-datatypes ((ValueCell!2044 0))(
  ( (ValueCellFull!2044 (v!4398 V!6013)) (EmptyCell!2044) )
))
(declare-datatypes ((array!8790 0))(
  ( (array!8791 (arr!4145 (Array (_ BitVec 32) ValueCell!2044)) (size!4470 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8790)

(declare-fun e!130854 () Bool)

(declare-fun array_inv!2711 (array!8790) Bool)

(assert (=> start!20272 (and (array_inv!2711 _values!649) e!130854)))

(assert (=> start!20272 true))

(declare-fun tp_is_empty!4775 () Bool)

(assert (=> start!20272 tp_is_empty!4775))

(declare-datatypes ((array!8792 0))(
  ( (array!8793 (arr!4146 (Array (_ BitVec 32) (_ BitVec 64))) (size!4471 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8792)

(declare-fun array_inv!2712 (array!8792) Bool)

(assert (=> start!20272 (array_inv!2712 _keys!825)))

(assert (=> start!20272 tp!17789))

(declare-fun b!199290 () Bool)

(declare-fun e!130853 () Bool)

(assert (=> b!199290 (= e!130853 tp_is_empty!4775)))

(declare-fun b!199291 () Bool)

(declare-fun res!94713 () Bool)

(assert (=> b!199291 (=> (not res!94713) (not e!130851))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!199291 (= res!94713 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4471 _keys!825))))))

(declare-fun b!199292 () Bool)

(declare-fun res!94710 () Bool)

(assert (=> b!199292 (=> (not res!94710) (not e!130851))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!199292 (= res!94710 (and (= (size!4470 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4471 _keys!825) (size!4470 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!199293 () Bool)

(declare-fun res!94709 () Bool)

(assert (=> b!199293 (=> (not res!94709) (not e!130851))))

(declare-datatypes ((List!2618 0))(
  ( (Nil!2615) (Cons!2614 (h!3256 (_ BitVec 64)) (t!7557 List!2618)) )
))
(declare-fun arrayNoDuplicates!0 (array!8792 (_ BitVec 32) List!2618) Bool)

(assert (=> b!199293 (= res!94709 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2615))))

(declare-fun b!199294 () Bool)

(declare-fun res!94708 () Bool)

(assert (=> b!199294 (=> (not res!94708) (not e!130851))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199294 (= res!94708 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!8231 () Bool)

(declare-fun mapRes!8231 () Bool)

(declare-fun tp!17788 () Bool)

(assert (=> mapNonEmpty!8231 (= mapRes!8231 (and tp!17788 e!130853))))

(declare-fun mapRest!8231 () (Array (_ BitVec 32) ValueCell!2044))

(declare-fun mapKey!8231 () (_ BitVec 32))

(declare-fun mapValue!8231 () ValueCell!2044)

(assert (=> mapNonEmpty!8231 (= (arr!4145 _values!649) (store mapRest!8231 mapKey!8231 mapValue!8231))))

(declare-fun b!199295 () Bool)

(declare-fun e!130855 () Bool)

(assert (=> b!199295 (= e!130854 (and e!130855 mapRes!8231))))

(declare-fun condMapEmpty!8231 () Bool)

(declare-fun mapDefault!8231 () ValueCell!2044)

