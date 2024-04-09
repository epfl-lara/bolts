; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41156 () Bool)

(assert start!41156)

(declare-fun b_free!11017 () Bool)

(declare-fun b_next!11017 () Bool)

(assert (=> start!41156 (= b_free!11017 (not b_next!11017))))

(declare-fun tp!38887 () Bool)

(declare-fun b_and!19291 () Bool)

(assert (=> start!41156 (= tp!38887 b_and!19291)))

(declare-fun b!459147 () Bool)

(declare-fun e!268003 () Bool)

(declare-fun e!268002 () Bool)

(assert (=> b!459147 (= e!268003 e!268002)))

(declare-fun res!274458 () Bool)

(assert (=> b!459147 (=> (not res!274458) (not e!268002))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!459147 (= res!274458 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17579 0))(
  ( (V!17580 (val!6222 Int)) )
))
(declare-datatypes ((tuple2!8164 0))(
  ( (tuple2!8165 (_1!4092 (_ BitVec 64)) (_2!4092 V!17579)) )
))
(declare-datatypes ((List!8269 0))(
  ( (Nil!8266) (Cons!8265 (h!9121 tuple2!8164) (t!14173 List!8269)) )
))
(declare-datatypes ((ListLongMap!7091 0))(
  ( (ListLongMap!7092 (toList!3561 List!8269)) )
))
(declare-fun lt!207779 () ListLongMap!7091)

(declare-fun zeroValue!515 () V!17579)

(declare-datatypes ((ValueCell!5834 0))(
  ( (ValueCellFull!5834 (v!8496 V!17579)) (EmptyCell!5834) )
))
(declare-datatypes ((array!28475 0))(
  ( (array!28476 (arr!13675 (Array (_ BitVec 32) ValueCell!5834)) (size!14027 (_ BitVec 32))) )
))
(declare-fun lt!207775 () array!28475)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun minValue!515 () V!17579)

(declare-datatypes ((array!28477 0))(
  ( (array!28478 (arr!13676 (Array (_ BitVec 32) (_ BitVec 64))) (size!14028 (_ BitVec 32))) )
))
(declare-fun lt!207776 () array!28477)

(declare-fun getCurrentListMapNoExtraKeys!1732 (array!28477 array!28475 (_ BitVec 32) (_ BitVec 32) V!17579 V!17579 (_ BitVec 32) Int) ListLongMap!7091)

(assert (=> b!459147 (= lt!207779 (getCurrentListMapNoExtraKeys!1732 lt!207776 lt!207775 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!28475)

(declare-fun v!412 () V!17579)

(assert (=> b!459147 (= lt!207775 (array!28476 (store (arr!13675 _values!549) i!563 (ValueCellFull!5834 v!412)) (size!14027 _values!549)))))

(declare-fun lt!207774 () ListLongMap!7091)

(declare-fun _keys!709 () array!28477)

(assert (=> b!459147 (= lt!207774 (getCurrentListMapNoExtraKeys!1732 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!459149 () Bool)

(declare-datatypes ((Unit!13285 0))(
  ( (Unit!13286) )
))
(declare-fun e!268000 () Unit!13285)

(declare-fun Unit!13287 () Unit!13285)

(assert (=> b!459149 (= e!268000 Unit!13287)))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!207777 () Unit!13285)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28477 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13285)

(assert (=> b!459149 (= lt!207777 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!459149 false))

(declare-fun b!459150 () Bool)

(declare-fun res!274459 () Bool)

(declare-fun e!268006 () Bool)

(assert (=> b!459150 (=> (not res!274459) (not e!268006))))

(assert (=> b!459150 (= res!274459 (and (= (size!14027 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14028 _keys!709) (size!14027 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!459151 () Bool)

(declare-fun e!267998 () Bool)

(assert (=> b!459151 (= e!267998 (bvslt from!863 (size!14028 _keys!709)))))

(assert (=> b!459151 (not (= (select (arr!13676 _keys!709) from!863) k!794))))

(declare-fun lt!207783 () Unit!13285)

(assert (=> b!459151 (= lt!207783 e!268000)))

(declare-fun c!56399 () Bool)

(assert (=> b!459151 (= c!56399 (= (select (arr!13676 _keys!709) from!863) k!794))))

(declare-fun lt!207780 () ListLongMap!7091)

(declare-fun +!1581 (ListLongMap!7091 tuple2!8164) ListLongMap!7091)

(declare-fun get!6757 (ValueCell!5834 V!17579) V!17579)

(declare-fun dynLambda!891 (Int (_ BitVec 64)) V!17579)

(assert (=> b!459151 (= lt!207779 (+!1581 lt!207780 (tuple2!8165 (select (arr!13676 _keys!709) from!863) (get!6757 (select (arr!13675 _values!549) from!863) (dynLambda!891 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapNonEmpty!20182 () Bool)

(declare-fun mapRes!20182 () Bool)

(declare-fun tp!38886 () Bool)

(declare-fun e!267999 () Bool)

(assert (=> mapNonEmpty!20182 (= mapRes!20182 (and tp!38886 e!267999))))

(declare-fun mapValue!20182 () ValueCell!5834)

(declare-fun mapRest!20182 () (Array (_ BitVec 32) ValueCell!5834))

(declare-fun mapKey!20182 () (_ BitVec 32))

(assert (=> mapNonEmpty!20182 (= (arr!13675 _values!549) (store mapRest!20182 mapKey!20182 mapValue!20182))))

(declare-fun b!459152 () Bool)

(declare-fun tp_is_empty!12355 () Bool)

(assert (=> b!459152 (= e!267999 tp_is_empty!12355)))

(declare-fun b!459153 () Bool)

(assert (=> b!459153 (= e!268006 e!268003)))

(declare-fun res!274465 () Bool)

(assert (=> b!459153 (=> (not res!274465) (not e!268003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28477 (_ BitVec 32)) Bool)

(assert (=> b!459153 (= res!274465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207776 mask!1025))))

(assert (=> b!459153 (= lt!207776 (array!28478 (store (arr!13676 _keys!709) i!563 k!794) (size!14028 _keys!709)))))

(declare-fun b!459154 () Bool)

(declare-fun res!274455 () Bool)

(assert (=> b!459154 (=> (not res!274455) (not e!268006))))

(declare-datatypes ((List!8270 0))(
  ( (Nil!8267) (Cons!8266 (h!9122 (_ BitVec 64)) (t!14174 List!8270)) )
))
(declare-fun arrayNoDuplicates!0 (array!28477 (_ BitVec 32) List!8270) Bool)

(assert (=> b!459154 (= res!274455 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8267))))

(declare-fun b!459155 () Bool)

(declare-fun Unit!13288 () Unit!13285)

(assert (=> b!459155 (= e!268000 Unit!13288)))

(declare-fun b!459156 () Bool)

(declare-fun res!274452 () Bool)

(assert (=> b!459156 (=> (not res!274452) (not e!268003))))

(assert (=> b!459156 (= res!274452 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!20182 () Bool)

(assert (=> mapIsEmpty!20182 mapRes!20182))

(declare-fun b!459157 () Bool)

(declare-fun e!268004 () Bool)

(declare-fun e!268005 () Bool)

(assert (=> b!459157 (= e!268004 (and e!268005 mapRes!20182))))

(declare-fun condMapEmpty!20182 () Bool)

(declare-fun mapDefault!20182 () ValueCell!5834)

