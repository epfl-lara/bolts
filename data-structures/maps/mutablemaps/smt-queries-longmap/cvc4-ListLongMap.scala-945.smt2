; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20782 () Bool)

(assert start!20782)

(declare-fun b_free!5429 () Bool)

(declare-fun b_next!5429 () Bool)

(assert (=> start!20782 (= b_free!5429 (not b_next!5429))))

(declare-fun tp!19318 () Bool)

(declare-fun b_and!12193 () Bool)

(assert (=> start!20782 (= tp!19318 b_and!12193)))

(declare-fun b!208002 () Bool)

(declare-fun res!101125 () Bool)

(declare-fun e!135712 () Bool)

(assert (=> b!208002 (=> (not res!101125) (not e!135712))))

(declare-datatypes ((array!9774 0))(
  ( (array!9775 (arr!4637 (Array (_ BitVec 32) (_ BitVec 64))) (size!4962 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9774)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!208002 (= res!101125 (= (select (arr!4637 _keys!825) i!601) k!843))))

(declare-fun b!208003 () Bool)

(declare-fun e!135711 () Bool)

(declare-fun tp_is_empty!5285 () Bool)

(assert (=> b!208003 (= e!135711 tp_is_empty!5285)))

(declare-fun b!208004 () Bool)

(declare-fun res!101127 () Bool)

(assert (=> b!208004 (=> (not res!101127) (not e!135712))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9774 (_ BitVec 32)) Bool)

(assert (=> b!208004 (= res!101127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208005 () Bool)

(declare-fun e!135714 () Bool)

(assert (=> b!208005 (= e!135714 tp_is_empty!5285)))

(declare-fun mapIsEmpty!8996 () Bool)

(declare-fun mapRes!8996 () Bool)

(assert (=> mapIsEmpty!8996 mapRes!8996))

(declare-fun res!101131 () Bool)

(assert (=> start!20782 (=> (not res!101131) (not e!135712))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20782 (= res!101131 (validMask!0 mask!1149))))

(assert (=> start!20782 e!135712))

(declare-datatypes ((V!6693 0))(
  ( (V!6694 (val!2687 Int)) )
))
(declare-datatypes ((ValueCell!2299 0))(
  ( (ValueCellFull!2299 (v!4653 V!6693)) (EmptyCell!2299) )
))
(declare-datatypes ((array!9776 0))(
  ( (array!9777 (arr!4638 (Array (_ BitVec 32) ValueCell!2299)) (size!4963 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9776)

(declare-fun e!135713 () Bool)

(declare-fun array_inv!3065 (array!9776) Bool)

(assert (=> start!20782 (and (array_inv!3065 _values!649) e!135713)))

(assert (=> start!20782 true))

(assert (=> start!20782 tp_is_empty!5285))

(declare-fun array_inv!3066 (array!9774) Bool)

(assert (=> start!20782 (array_inv!3066 _keys!825)))

(assert (=> start!20782 tp!19318))

(declare-fun mapNonEmpty!8996 () Bool)

(declare-fun tp!19319 () Bool)

(assert (=> mapNonEmpty!8996 (= mapRes!8996 (and tp!19319 e!135711))))

(declare-fun mapRest!8996 () (Array (_ BitVec 32) ValueCell!2299))

(declare-fun mapKey!8996 () (_ BitVec 32))

(declare-fun mapValue!8996 () ValueCell!2299)

(assert (=> mapNonEmpty!8996 (= (arr!4638 _values!649) (store mapRest!8996 mapKey!8996 mapValue!8996))))

(declare-fun b!208006 () Bool)

(declare-fun res!101126 () Bool)

(assert (=> b!208006 (=> (not res!101126) (not e!135712))))

(declare-datatypes ((List!2990 0))(
  ( (Nil!2987) (Cons!2986 (h!3628 (_ BitVec 64)) (t!7929 List!2990)) )
))
(declare-fun arrayNoDuplicates!0 (array!9774 (_ BitVec 32) List!2990) Bool)

(assert (=> b!208006 (= res!101126 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2987))))

(declare-fun b!208007 () Bool)

(declare-fun res!101128 () Bool)

(assert (=> b!208007 (=> (not res!101128) (not e!135712))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!208007 (= res!101128 (and (= (size!4963 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4962 _keys!825) (size!4963 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208008 () Bool)

(declare-fun res!101130 () Bool)

(assert (=> b!208008 (=> (not res!101130) (not e!135712))))

(assert (=> b!208008 (= res!101130 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4962 _keys!825))))))

(declare-fun b!208009 () Bool)

(declare-fun res!101129 () Bool)

(assert (=> b!208009 (=> (not res!101129) (not e!135712))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208009 (= res!101129 (validKeyInArray!0 k!843))))

(declare-fun b!208010 () Bool)

(assert (=> b!208010 (= e!135713 (and e!135714 mapRes!8996))))

(declare-fun condMapEmpty!8996 () Bool)

(declare-fun mapDefault!8996 () ValueCell!2299)

