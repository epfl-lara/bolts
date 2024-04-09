; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20412 () Bool)

(assert start!20412)

(declare-fun b_free!5059 () Bool)

(declare-fun b_next!5059 () Bool)

(assert (=> start!20412 (= b_free!5059 (not b_next!5059))))

(declare-fun tp!18208 () Bool)

(declare-fun b_and!11823 () Bool)

(assert (=> start!20412 (= tp!18208 b_and!11823)))

(declare-fun b!201646 () Bool)

(declare-fun res!96441 () Bool)

(declare-fun e!132151 () Bool)

(assert (=> b!201646 (=> (not res!96441) (not e!132151))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201646 (= res!96441 (validKeyInArray!0 k!843))))

(declare-fun b!201647 () Bool)

(declare-fun e!132149 () Bool)

(declare-fun tp_is_empty!4915 () Bool)

(assert (=> b!201647 (= e!132149 tp_is_empty!4915)))

(declare-fun b!201648 () Bool)

(declare-fun res!96437 () Bool)

(assert (=> b!201648 (=> (not res!96437) (not e!132151))))

(declare-datatypes ((array!9058 0))(
  ( (array!9059 (arr!4279 (Array (_ BitVec 32) (_ BitVec 64))) (size!4604 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9058)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6201 0))(
  ( (V!6202 (val!2502 Int)) )
))
(declare-datatypes ((ValueCell!2114 0))(
  ( (ValueCellFull!2114 (v!4468 V!6201)) (EmptyCell!2114) )
))
(declare-datatypes ((array!9060 0))(
  ( (array!9061 (arr!4280 (Array (_ BitVec 32) ValueCell!2114)) (size!4605 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9060)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!201648 (= res!96437 (and (= (size!4605 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4604 _keys!825) (size!4605 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!201649 () Bool)

(declare-fun res!96435 () Bool)

(assert (=> b!201649 (=> (not res!96435) (not e!132151))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!201649 (= res!96435 (= (select (arr!4279 _keys!825) i!601) k!843))))

(declare-fun b!201650 () Bool)

(declare-fun res!96442 () Bool)

(assert (=> b!201650 (=> (not res!96442) (not e!132151))))

(assert (=> b!201650 (= res!96442 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4604 _keys!825))))))

(declare-fun res!96438 () Bool)

(assert (=> start!20412 (=> (not res!96438) (not e!132151))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20412 (= res!96438 (validMask!0 mask!1149))))

(assert (=> start!20412 e!132151))

(declare-fun e!132152 () Bool)

(declare-fun array_inv!2815 (array!9060) Bool)

(assert (=> start!20412 (and (array_inv!2815 _values!649) e!132152)))

(assert (=> start!20412 true))

(assert (=> start!20412 tp_is_empty!4915))

(declare-fun array_inv!2816 (array!9058) Bool)

(assert (=> start!20412 (array_inv!2816 _keys!825)))

(assert (=> start!20412 tp!18208))

(declare-fun b!201651 () Bool)

(declare-fun e!132154 () Bool)

(assert (=> b!201651 (= e!132151 (not e!132154))))

(declare-fun res!96434 () Bool)

(assert (=> b!201651 (=> res!96434 e!132154)))

(assert (=> b!201651 (= res!96434 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6201)

(declare-fun zeroValue!615 () V!6201)

(declare-datatypes ((tuple2!3786 0))(
  ( (tuple2!3787 (_1!1903 (_ BitVec 64)) (_2!1903 V!6201)) )
))
(declare-datatypes ((List!2721 0))(
  ( (Nil!2718) (Cons!2717 (h!3359 tuple2!3786) (t!7660 List!2721)) )
))
(declare-datatypes ((ListLongMap!2713 0))(
  ( (ListLongMap!2714 (toList!1372 List!2721)) )
))
(declare-fun lt!100727 () ListLongMap!2713)

(declare-fun getCurrentListMap!954 (array!9058 array!9060 (_ BitVec 32) (_ BitVec 32) V!6201 V!6201 (_ BitVec 32) Int) ListLongMap!2713)

(assert (=> b!201651 (= lt!100727 (getCurrentListMap!954 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100726 () ListLongMap!2713)

(declare-fun lt!100734 () array!9060)

(assert (=> b!201651 (= lt!100726 (getCurrentListMap!954 _keys!825 lt!100734 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100728 () ListLongMap!2713)

(declare-fun lt!100729 () ListLongMap!2713)

(assert (=> b!201651 (and (= lt!100728 lt!100729) (= lt!100729 lt!100728))))

(declare-fun lt!100738 () ListLongMap!2713)

(declare-fun lt!100736 () tuple2!3786)

(declare-fun +!389 (ListLongMap!2713 tuple2!3786) ListLongMap!2713)

(assert (=> b!201651 (= lt!100729 (+!389 lt!100738 lt!100736))))

(declare-fun v!520 () V!6201)

(assert (=> b!201651 (= lt!100736 (tuple2!3787 k!843 v!520))))

(declare-datatypes ((Unit!6085 0))(
  ( (Unit!6086) )
))
(declare-fun lt!100730 () Unit!6085)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!67 (array!9058 array!9060 (_ BitVec 32) (_ BitVec 32) V!6201 V!6201 (_ BitVec 32) (_ BitVec 64) V!6201 (_ BitVec 32) Int) Unit!6085)

(assert (=> b!201651 (= lt!100730 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!67 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!325 (array!9058 array!9060 (_ BitVec 32) (_ BitVec 32) V!6201 V!6201 (_ BitVec 32) Int) ListLongMap!2713)

(assert (=> b!201651 (= lt!100728 (getCurrentListMapNoExtraKeys!325 _keys!825 lt!100734 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201651 (= lt!100734 (array!9061 (store (arr!4280 _values!649) i!601 (ValueCellFull!2114 v!520)) (size!4605 _values!649)))))

(assert (=> b!201651 (= lt!100738 (getCurrentListMapNoExtraKeys!325 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!8441 () Bool)

(declare-fun mapRes!8441 () Bool)

(assert (=> mapIsEmpty!8441 mapRes!8441))

(declare-fun b!201652 () Bool)

(declare-fun res!96436 () Bool)

(assert (=> b!201652 (=> (not res!96436) (not e!132151))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9058 (_ BitVec 32)) Bool)

(assert (=> b!201652 (= res!96436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!201653 () Bool)

(declare-fun res!96439 () Bool)

(assert (=> b!201653 (=> (not res!96439) (not e!132151))))

(declare-datatypes ((List!2722 0))(
  ( (Nil!2719) (Cons!2718 (h!3360 (_ BitVec 64)) (t!7661 List!2722)) )
))
(declare-fun arrayNoDuplicates!0 (array!9058 (_ BitVec 32) List!2722) Bool)

(assert (=> b!201653 (= res!96439 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2719))))

(declare-fun b!201654 () Bool)

(declare-fun e!132153 () Bool)

(assert (=> b!201654 (= e!132153 true)))

(declare-fun lt!100735 () ListLongMap!2713)

(declare-fun lt!100740 () tuple2!3786)

(declare-fun lt!100731 () ListLongMap!2713)

(assert (=> b!201654 (= (+!389 lt!100735 lt!100740) (+!389 lt!100731 lt!100736))))

(declare-fun lt!100733 () ListLongMap!2713)

(declare-fun lt!100741 () Unit!6085)

(declare-fun addCommutativeForDiffKeys!110 (ListLongMap!2713 (_ BitVec 64) V!6201 (_ BitVec 64) V!6201) Unit!6085)

(assert (=> b!201654 (= lt!100741 (addCommutativeForDiffKeys!110 lt!100733 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201655 () Bool)

(assert (=> b!201655 (= e!132154 e!132153)))

(declare-fun res!96440 () Bool)

(assert (=> b!201655 (=> res!96440 e!132153)))

(assert (=> b!201655 (= res!96440 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!100739 () ListLongMap!2713)

(assert (=> b!201655 (= lt!100739 lt!100735)))

(assert (=> b!201655 (= lt!100735 (+!389 lt!100733 lt!100736))))

(declare-fun lt!100737 () Unit!6085)

(assert (=> b!201655 (= lt!100737 (addCommutativeForDiffKeys!110 lt!100738 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (=> b!201655 (= lt!100726 (+!389 lt!100739 lt!100740))))

(declare-fun lt!100732 () tuple2!3786)

(assert (=> b!201655 (= lt!100739 (+!389 lt!100729 lt!100732))))

(assert (=> b!201655 (= lt!100727 lt!100731)))

(assert (=> b!201655 (= lt!100731 (+!389 lt!100733 lt!100740))))

(assert (=> b!201655 (= lt!100733 (+!389 lt!100738 lt!100732))))

(assert (=> b!201655 (= lt!100726 (+!389 (+!389 lt!100728 lt!100732) lt!100740))))

(assert (=> b!201655 (= lt!100740 (tuple2!3787 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201655 (= lt!100732 (tuple2!3787 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapNonEmpty!8441 () Bool)

(declare-fun tp!18209 () Bool)

(declare-fun e!132148 () Bool)

(assert (=> mapNonEmpty!8441 (= mapRes!8441 (and tp!18209 e!132148))))

(declare-fun mapRest!8441 () (Array (_ BitVec 32) ValueCell!2114))

(declare-fun mapKey!8441 () (_ BitVec 32))

(declare-fun mapValue!8441 () ValueCell!2114)

(assert (=> mapNonEmpty!8441 (= (arr!4280 _values!649) (store mapRest!8441 mapKey!8441 mapValue!8441))))

(declare-fun b!201656 () Bool)

(assert (=> b!201656 (= e!132148 tp_is_empty!4915)))

(declare-fun b!201657 () Bool)

(assert (=> b!201657 (= e!132152 (and e!132149 mapRes!8441))))

(declare-fun condMapEmpty!8441 () Bool)

(declare-fun mapDefault!8441 () ValueCell!2114)

